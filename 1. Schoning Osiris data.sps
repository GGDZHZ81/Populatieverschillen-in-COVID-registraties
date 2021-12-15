* Encoding: UTF-8.

***=============== Om te volgende syntax te draaien zijn eerste twee datasets aan elkaar gekoppelend, te wete
*** In de set van Rotterdam zijn daarvoor eerst alle datum variabelen omgezet in string variabelen ***

ALTER TYPE ZIE1eZiekteDt (Date10).
ALTER TYPE NCOVdat1eposncov (Date10).
ALTER TYPE NCOVdat1ezkhopn (Date10).
ALTER TYPE NCOVopnamedatumICU (Date10).
ALTER TYPE ZIEDtOverlijden (Date10).

*IF (Missing(indin)) Bronbestand = 0.
*IF (indin=1 OR indin=0) Bronbestand= 1. 
*Execute.

*VALUE LABELS Bronbestand
*0 Rotterdam Rijnmond
1 Zuid-Holland Zuid.
*Execute. 

COMPUTE Datum_combi = NCOVdat1eposncov.  
Alter type Datum_combi (DATE10). 
IF (Missing(Datum_combi)) Datum_combi = ZIE1eZiekteDt. 
IF (Missing(Datum_combi)) Datum_combi = NCOVdat1ezkhopn.
IF (Missing(Datum_combi)) Datum_combi = NCOVopnamedatumICU.
IF (Missing(Datum_combi)) Datum_combi = ZIEDtOverlijden. 
Execute. 

Frequencies Datum_combi
/FORMAT=notable
/statistics= MINIMUM MAXIMUM.
Execute.  

Compute Jaar = xdate.year(Datum_combi).
Compute Maand=  xdate.month(Datum_combi).

CROSSTABS Jaar BY Maand. 
* Zit een klein aantal foute datums in -> liggen in de toekomst: deze op 2020 zetten

IF (Jaar=2021) Maand= Maand+12.
Frequencies Maand.

RECODE Maand (SYSMIS=999) (23=999) (24=999) (1=999) (2=999). 

VALUE LABELS Maand
3 Maart 2020
4 April 2020
5 Mei 2020
6 Juni 2020
7 Juli 2020
8 Augustus 2020
9 Septmeber 2020
10 Oktober 2020 
11 November 2020
12 December 2020
13 Januari 2021
14 Februari 202
15 Maart 2021
16 April 2021
17 Mei 2021
999 Maand onbekend.
Execute. 

Frequencies Maand.

**============================== Transformatie long naar wide en weer terug =======================================**
**===========================Deze stap wordt gedaan om later longitudinaal te kunnen analyseren========================**
**==========Op deze manier krijgen alle mensen in de maand dat ze niet in Osiris stonden de waarde nul voor die betreffende maand====***

AUTORECODE VARIABLES=EIGENAARDesc 
  /INTO num
  /PRINT.

AUTORECODE VARIABLES=CBKSoortNR 
  /INTO num2
  /PRINT.

**============== Dit verschil wordt veroorzaakt door de weken die tussen de Osiris en HPzone download gezeten hebben=====**

FILTER OFF.
USE ALL.
SELECT IF (num>1).
EXECUTE.

**============ Verwijderen van de niet koppelbaren -=========**

FILTER OFF.
USE ALL.
SELECT IF (num2 =3).
EXECUTE.

DELETE VARIABLES num num2.

COMPUTE RINPERSOON_num= NUMBER(RINPERSOON, F9.0).

RANK VARIABLES=Maand (A) BY RINPERSOON_num
  /RANK
  /PRINT=YES
  /TIES=MEAN.

* Identify Duplicate Cases.
SORT CASES BY RINPERSOON(A).
MATCH FILES
  /FILE=*
  /BY RINPERSOON
 /DROP = PrimaryLast  /LAST=PrimaryLast.
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

**============= Wanneer de rank 1,5 of 2,5 etc. is en PrimaryLast een nul, dan verwijderen ============**
**======== Dt zijn RINPERSOON nummers die er dubbel inzitten met eenbesmetting in dezelfde maand =====***

Frequencies RMaand.
CROSSTABS RMaand BY PrimaryLast. 

IF (PrimaryLast=0 AND (RMaand=1.5 OR RMaand=2.5)) Bewaren=0.
RECODE Bewaren (SYSMIS=1). 
Frequencies Bewaren. 

**============> Er worden 204 mensen verwijderd.

FILTER OFF.
USE ALL.
SELECT IF (Bewaren=1).
EXECUTE.

**=============== Vanaf hier transformeren naar wide format =================***

SAVE OUTFILE='H:\Datasets voor analyse\210531_Tweede upload wide.sav' 
  /COMPRESSED.

COMPUTE Besmet=1. 

CASESTOVARS
  /ID= RINPERSOON
  /INDEX=Maand
  /GROUPBY= Index
  /Drop= EIGENAARDesc OSIRISNR_crypt ZIE1eZiekteDt NCOVdat1eposncov NCOVdat1ezkhopn
NCOVopnamedatumICU ZIEDtOverlijden Beroep CBKSoortNR Datum_combi Jaar RMaand RINPERSOON_num
PrimaryLast Bewaren.

RECODE Besmet.3 Besmet.4 Besmet.5 Besmet.6 Besmet.7 Besmet.8
Besmet.9 Besmet.10 Besmet.11 Besmet.12 Besmet.13 Besmet.14 Besmet.15
Besmet.16 Besmet.999
(2=1) (SYSMIS=0).
Execute. 

VARIABLE LABELS Besmet.3 'Besmet in Maart 2020'.
VARIABLE LABELS Besmet.4  'Besmet in April 2020'.
VARIABLE LABELS Besmet.5   'Besmet in Mei 2020'. 
VARIABLE LABELS Besmet.6  'Besmet in Juni 2020'.
VARIABLE LABELS Besmet.7  'Besmet in Juli 2020'.
VARIABLE LABELS Besmet.8  'Besmet in Augustus 2020'.
VARIABLE LABELS Besmet.9  'Besmet in Septmeber 2020'.
VARIABLE LABELS Besmet.10  'Besmet in Oktober 2020'.
VARIABLE LABELS Besmet.11  'Besmet in November 2020'.
VARIABLE LABELS Besmet.12  'Besmet in December 2020'.
VARIABLE LABELS Besmet.13  'Besmet in Januari 2021'.
VARIABLE LABELS Besmet.14  'Besmet in Februari 2021'.
VARIABLE LABELS Besmet.15  'Besmet in Maart 2021'.
VARIABLE LABELS Besmet.16 'Besmet in April 2021'.
VARIABLE LABELS Besmet.999 'Besmet in onbekende maand'. 

***===================== Hier ook de overige mensen die in onze studie zitten koppelen (via het menu)============**

RECODE Besmet.3 Besmet.4 Besmet.5 Besmet.6 Besmet.7 Besmet.8
Besmet.9 Besmet.10 Besmet.11 Besmet.12 Besmet.13 Besmet.14 Besmet.15
Besmet.16 Besmet.999
(SYSMIS=0).
Execute. 

**=============== Terug transformeren naar long zodat alle mensen een datum variabele hebben en er 15 keer instaan======***

VARSTOCASES
  /MAKE Besmet FROM Besmet.3 Besmet.4 Besmet.5 Besmet.6 Besmet.7 Besmet.8 Besmet.9 Besmet.10 
    Besmet.11 Besmet.12 Besmet.13 Besmet.14 Besmet.15 Besmet.16 Besmet.999
  /INDEX=Maand(15) 
  /KEEP=RINPERSOON 
  /NULL=KEEP.

SAVE OUTFILE='H:\Datasets voor analyse\210531_Tweede upload long.sav'
  /COMPRESSED.

**===== Let op: Maandvariabele wordt na terugtransformatie opnieuw genummerd: zorgen dat de maand weer goed staat =====**

COMPUTE Maand= Maand + 2. 

VALUE LABELS Maand
3 Maart 2020
4 April 2020
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







