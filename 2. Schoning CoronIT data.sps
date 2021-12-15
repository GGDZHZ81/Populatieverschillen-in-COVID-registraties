* Encoding: UTF-8.

**========================================= Schoning CoronIT data ===================================***
*================================== Datum variabelen netjes zetten ====================================***

String Datum_afname (a11).
Compute Datum_afname=CONCAT(char.substring(d_afname,9,2), (char.substring(d_afname, 6,2)), (char.substring(d_afname, 1,4))).
Execute. 
Alter type Datum_afname(date11).

String Datum_uitslag (a11).
Compute Datum_uitslag=CONCAT(char.substring(d_uitslag,9,2), (char.substring(d_uitslag, 6,2)), (char.substring(d_uitslag, 1,4))).
Execute. 
Alter type Datum_uitslag (date11).

**============================== Maandvariabele aanmaken =======================================****

* Date and Time Wizard: Afname_Maand.
COMPUTE Afname_Maand=XDATE.MONTH(Datum_afname).
VARIABLE LEVEL Afname_Maand(NOMINAL).
FORMATS Afname_Maand(F8.0).
VARIABLE WIDTH Afname_Maand(8).
EXECUTE.

* Date and Time Wizard: Afname_Maand.
COMPUTE Afname_Jaar=XDATE.YEAR(Datum_afname).
VARIABLE LEVEL Afname_Jaar(NOMINAL).
FORMATS Afname_Jaar(F8.0).
VARIABLE WIDTH Afname_Jaar(8).
EXECUTE.

COMPUTE Maand= Afname_Maand.
IF (Afname_Jaar= 2021)  Maand = Maand +12. 

SORT CASES  BY Maand.
SPLIT FILE LAYERED BY Maand.

Frequencies Datum_afname
  /format=notable
  /statistics= minimum maximum.
Execute. 

VALUE LABELS Maand
5 Mei 2020
6 Juni 2020
7 Juli 2020
8 Agustus 2020
9 September 2020
10 Oktober 2020
11 November 2020
12 December 2020
13 Januari 2021
14 Februari 2021
15 Maart 2021
16 April 2021
17 Mei 2021
18 Juni 2021.
Execute. 

SPLIT FILE OFF.
USE ALL. 

**================ Transformeren long naar wide format voor de aanmaak van maanincidentie wel/ niet in CoronIT en wel/ niet positief in CoronIT=======***
**================================= Alleen de koppelbare RINPERSOONS ("R") bewaren =========================================***

AUTORECODE VARIABLES=RinPersoons 
  /INTO RinPersoons_num
  /PRINT.

FILTER OFF.
USE ALL.
SELECT IF (RinPersoons_num=2).
EXECUTE.

COMPUTE RINPERSOON_num= NUMBER(RINPERSOON, F9.0).

***============ Ranking aanmaken van Testmaand binnen eenzelfde RINPERSOON ==================**

RANK VARIABLES=Maand (A) BY RINPERSOON_num
  /RANK
  /PRINT=YES
  /TIES=MEAN.

Frequencies RMaand.
Execute. 

SORT CASES BY  RINPERSOON_num (A) Maand (A). 

**=================== Duplicaten zoeken (herhaalde tests bij eenzelfde RINPERSOON) ===============***

* Identify Duplicate Cases.
SORT CASES BY Rinpersoon(A).
MATCH FILES
  /FILE=*
  /BY Rinpersoon
  /LAST=PrimaryLast.
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
EXECUTE.

**============= Wanneer de rank 1,5 of 2,5 etc. is en PrimaryLast een nul, dan verwijderen ============**
**======== Dt zijn RINPERSOON nummers die er dubbel inzitten met een besmetting in dezelfde maand =====***

Frequencies RMaand.
CROSSTABS RMaand BY PrimaryLast. 

SORT CASES BY  RINPERSOON_num (A) Maand (A). 

IF (RMaand=1.5 OR RMaand=2.5 OR RMaand=3.5 OR RMaand=4.5 OR RMaand=5.5
OR RMaand=6.5  OR RMaand=7.5  OR RMaand=8.5 OR RMaand=9.5 OR RMaand=10.5  
OR RMaand=11.5 OR RMaand=12.5 OR RMaand=13.5 OR RMaand=14.5 OR RMaand=15.5
OR RMaand=16.5 OR RMaand=17.5 OR RMaand=18.5 OR RMaand=19.5  OR RMaand=20.5 OR RMaand=21.5 
OR RMaand=23.5 OR RMaand=24.5 OR RMaand=25.5 OR RMaand=26.5 OR RMaand=27.5
OR RMaand=30.5 OR RMaand=33.5 OR RMaand=54.5 OR RMaand=60.5) Dubbel_zelfde_maand =1.

RECODE  Dubbel_zelfde_maand (SYSMIS=0). 
Frequencies Dubbel_zelfde_maand. 

SAVE OUTFILE='H:\Subsets voor koppeling\210614_CoronIT long format_Dubbel_zelfde_maand.sav'
  /COMPRESSED.

FILTER OFF.
USE ALL.
SELECT IF (Dubbel_zelfde_maand =1).
EXECUTE.

**============= Binnen de subset van mensen die meerdere keren getest zijn in dezelfde maand, duplicaten in ID nummer identificeren =====***

SORT CASES BY RINPERSOON_num(A).

* Identify Duplicate Cases.
SORT CASES BY RINPERSOON_num(A).
MATCH FILES
  /FILE=*
  /BY RINPERSOON_num
  /LAST=PrimaryLast1.
VARIABLE LEVEL  PrimaryLast1 (ORDINAL).
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast1 =1).
EXECUTE.

Frequencies RMaand. 
CROSSTABS RMaand BY PrimaryLast. 

*===================== Zorgen dat in de 'originele' long format set nu geen mensen meer zitten die dubbel getest zijn in dezelfde maand =====**

FILTER OFF.
USE ALL.
SELECT IF (Dubbel_zelfde_maand=0).
EXECUTE.

**========= Nu met "add variables" via het menu de twee sets weer samenvoegen ================***

**========== Ranking opnieuw runnen (controle of er dan geen dubbelen meer inzitten)================**

DELETE VARIABLES RMaand.
SORT CASES BY Maand(A) RINPERSOON_num.

RANK VARIABLES=Maand (A) BY RINPERSOON_num
  /RANK
  /PRINT=YES
  /TIES=MEAN.

**================= Opslaan als en transformeren naar wide format ==================****

SAVE OUTFILE='H:\Datasets voor analyse\210531_Tweede upload CoronIT wide.sav' 
  /COMPRESSED.

COMPUTE Getest=1. 
COMPUTE Positief_in_CoronIT =0.
IF(cd_resultaat= "POSITIEF")  Positief_in_CoronIT =1. 
Frequencies Positief_In_CoronIT.

**========= Er zitten nog steeds dubbelen in: syntax met ranking runt niet goed (storing?)======**
**Echte dubbele invoer handmatig verwijderd voor 3 mensen ===**

*CROSSTABS cd_resultaat BY Positief_in_CoronIT. 

SORT CASES BY RINPERSOON_num.

AGGREGATE
  /OUTFILE='H:\Datasets voor analyse\210531_Tweede upload CoronIT wide aggr.sav'
  /BREAK=Rinpersoon
  /Mei_2020=CIN(Maand 5 5)
  /Juni_2020=CIN(Maand 6 6)
  /Juli_2020=CIN(Maand 7 7)
  /Aug_2020=CIN(Maand 8 8)  
  /Sept_2020=CIN(Maand 9 9)
  /Okt_2020=CIN(Maand 10 10)
  /Nov_2020=CIN(Maand 11 11)
  /Dec_2020=CIN(Maand 12 12)
  /Jan_2021=CIN(Maand 13 13)
  /Feb_2021=CIN(Maand 14 14)
  /Maart_2021=CIN(Maand 15 15)
  /April_2021=CIN(Maand 16 16)
  /Mei_2021=CIN(Maand 17 17)
  /Juni_2021=CIN(Maand 18 18).

**================ Op geaggregeerde set: alle waarden boven de 0 op 1 zetten (ongeacht of mensen meerdere keren per maand besmet waren))====*

RECODE Mei_2020
Juni_2020
Juli_2020
Aug_2020
Sept_2020
Okt_2020
Nov_2020
Dec_2020
Jan_2021
Feb_2021
Maart_2021
April_2021
Mei_2021
Juni_2021
(0=0) (ELSE=1). 

**=============== Deze weer via het menu koppelen aan de set "RINPERSOON_in_studie" ==================**
**============== Doel: zorgen dat alle mensen die in onze studie zitten voor elke maand een waarde krijgen ======**

RECODE Mei_2020
Juni_2020
Juli_2020
Aug_2020
Sept_2020
Okt_2020
Nov_2020
Dec_2020
Jan_2021
Feb_2021
Maart_2021
April_2021
Mei_2021
Juni_2021
(SYSMIS= 0). 

FILTER OFF.
USE ALL.
SELECT IF (In_studie=1).
EXECUTE.

SAVE OUTFILE='H:\Datasets voor analyse\210531_Tweede upload CoronIT wide aggr.sav'.

**============================= Deze set omzetten in long format =====================================**

VARSTOCASES
  /MAKE Getest FROM Mei_2020 Juni_2020 Juli_2020 Aug_2020 Sept_2020 Okt_2020 Nov_2020 Dec_2020 
    Jan_2021 Feb_2021 Maart_2021 April_2021 Mei_2021 Juni_2021
  /INDEX=Index1(14) 
  /KEEP=Rinpersoon In_studie
  /NULL=KEEP.

SAVE OUTFILE='H:\Subsets voor koppeling\210614_CoronIT_long_format.sav'
  /COMPRESSED.

**========== Let op: Index gaat nu tellen vanaf 1 terwijl de maanden starten vanaf mei: corrigeren ===================**

COMPUTE Maand = Index1 + 4. 

VALUE LABELS Maand
5 Mei 2020
6 Juni 2020
7 Juli 2020
8 Agustus 2020
9 September 2020
10 Oktober 2020
11 November 2020
12 December 2020
13 Januari 2021
14 Februari 2021
15 Maart 2021
16 April 2021
17 Mei 2021
18 Juni 2021.
Execute. 

**============================ Daarna koppelen aan de long format (maand) set waarin ook Osiris data staan ========================**
**============================================ Op gekoppelde set ===================================================**

RECODE Besmet Getest (SYSMIS =888).

Value labels Besmet 
0 Niet besmet in deze maand
1 wel besmet in deze maand
888 Osirisdata van deze maand onbekend. 

Value labels Getest
0 Niet getest in deze maand
1 wel getest in deze maand
888 CoronIT data van deze maand onbekend. 

CROSSTABS Besmet BY Maand.
CROSSTABS Getest BY Maand. 

**========================== Aparte set maken voor Positief getest DOOR DE GGD (dus als uitslag in CoronIT) ========================**

GET FILE ='H:\Datasets voor analyse\210531_Tweede upload CoronIT wide aggr.sav'.

AGGREGATE
  /OUTFILE='H:\Datasets voor analyse\210531_Positief CoronIT aggr.sav'
  /BREAK=Rinpersoon Maand
  /Positief_CoronIT= sum(Positief_in_CoronIT).

***=========================== Na koppeling aan de totale long format set =================================****

RECODE Positief_CoronIT (SYSMIS=99).
Execute. 

VALUE LABELS Positief_CoronIT 
1 Ja, deze maand positief in CoronIT
0 Nee, de maand negatief in CoronIT
99 Niet in CoronIT deze maand.

Crosstabs Getest BY Positief_CoronIT. 
CROSSTABS Besmet BY Positief_CoronIT.

**================  Correctie voor mensen die positief in CoronIT staan in een bepaalde maand maar niet in Osiris=====**

COMPUTE Besmet_Osiris= Besmet. 
IF (Positief_CoronIT=1 AND Besmet_Osiris=0) Besmet=1. 







