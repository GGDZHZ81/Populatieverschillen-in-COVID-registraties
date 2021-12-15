* Encoding: UTF-8.

****================= In deze syntax worden variabelen geselecteerd vanuit de microdata bestanden van het CBS====================***
***De Bronbestanden zijn SPOLISBUSV4, VSLGWB2020TAB03V2,  GBAHUISHOUDENS2019BUSV1, GBAADRESOBJECT2019BUSV1

*** Selectie SPOLISBUSV4: SLNINGLD, SLNLBPH, SCTRCTLN, SAANTCTRCTURENPWK, SINDLHKORT, SPOLISDIENSTVERBAND, IndArbovOnbepTd, SBEID
*** Verwijderd vanwege gebrek aan volledige data/ benodigde hercodering: SSRTIV_num, SSECT_num, SCAOSECTOR_num

*****================================== Wanneer van toepassing: omzetten van STRING in numeriek =========================****

AUTORECODE VARIABLES=SINDLHKORT 
  /INTO SINDLHKORT_num.

AUTORECODE VARIABLES= SPOLISDIENSTVERBAND
 /INTO SPOLISDIENSTVERBAND_num.

AUTORECODE VARIABLES=IndArbovOnbepTd
 /INTO IndArbovOnbepTd_num. 

AUTORECODE VARIABLES=SINDLHKORT 
  /INTO SINDLHKORT_num
  /PRINT.

**======= Deze is via het menu verrijkt met een indicator die aangeeft of een RINPERSOON wel of niet in onze studiepopulatie thuishoort (In_studie)====***

FILTER OFF.
USE ALL.
SELECT IF (In_studie=1 AND (RINPERSOONS="R" OR RINPERSOONS="S")).
EXECUTE.

String Aanvang (a11).	
COMPUTE Aanvang = SDATUMAANVANGIKO.
Alter type Aanvang(Sdate10). 

String Einde(a11).
COMPUTE Einde= SDATUMEINDEIKO.
Alter type Einde(Sdate10). 

**================ Controleren of er nu gebruik wordt gemaakt van de inkomstenbron die op 01-01-2020 van kracht was================****

SPLIT FILE OFF.
Frequencies Aanvang Einde
/Statistics=  minimum maximum
/FORMAT= notable.
Execute.

***============================ Verkennen van de gemiddelde looptijd is van een inkomstenopgave===========================****

** Date and Time Wizard: Looptijd_opgave.
COMPUTE Looptijd_opgave =DATEDIF(Einde, Aanvang, "days").
VARIABLE LABELS  Looptijd_opgave.
VARIABLE LEVEL Looptijd_opgave (SCALE).
FORMATS Looptijd_opgave (F5.0).
VARIABLE WIDTH  Looptijd_opgave(5).
EXECUTE.

VARIABLE LABELS Looptijd_opgave 'Looptijd van de inkomstenopgave (in dagen)'.
Frequencies Looptijd_opgave
/format=notable
/statistics=mean median.
Execute. 

COMPUTE RINPERSOON_num=NUMBER(RINPERSOON, F9.0).
VARIABLE LABELS RINPERSOON_num 'RINPERSOON numeriek (voor ranking)'. 

***============================= Bekijken hoeveel inkomstenopgaven mensen gemiddeld hebben ===========================***

RANK VARIABLES=Aanvang (A) BY RINPERSOON_num
  /RANK
  /PRINT=YES
  /TIES=MEAN.

Frequencies RAanvang
/format= notable
/statistics= median minimum maximum.
Execute. 

***========================== Bekijken hoe groot verschillen over de tijd zijn ==========================****

IF Aanvang < Date.dmy(01,04,2020) Kwartaal=1.
IF Aanvang >=  Date.dmy(01,04,2020) AND Aanvang< Date.dmy(01,07,2020) Kwartaal=2.
IF Aanvang >=  Date.dmy(01,07,2020) AND Aanvang< Date.dmy(01,10,2020) Kwartaal=3.
IF Aanvang >=  Date.dmy(01,10,2020) Kwartaal=4.

SORT CASES  BY Kwartaal.
SPLIT FILE LAYERED BY Kwartaal.

Frequencies SLNINGLD SLNLBPH SCTRCTLN SAANTCTRCTURENPWK Looptijd_opgave
/statistics= mean median minimum maximum
/format=notable.
Execute. 

SPLIT FILE OFF.
USE ALL. 

***============================= Aanmaak geaggregeerde variabelen ===========================****

DATASET DECLARE SPOLIS_agg.
AGGREGATE
  /OUTFILE='SPOLIS_agg'
  /BREAK=RINPERSOON
  /SLNINGLD_mean=MEAN(SLNINGLD) 
  /SLNLBPH_mean=MEAN(SLNLBPH) 
  /SCTRCTLN_mean=MEAN(SCTRCTLN) 
  /SAANTCTRCTURENPWK_mean=MEAN(SAANTCTRCTURENPWK) 
  /SINDLHKORT_Perc_Ja=PLT(SINDLHKORT_num 3) 
  /SPOLISDIENSTVERBAND_Perc_voltijd=PIN(SPOLISDIENSTVERBAND_num 2 2)
  /IndArbovOnbepTd_Perc_Ja =PIN(IndArbovOnbepTd_num 2 2).
Execute. 

VARIABLE LABELS SLNINGLD_mean 'Gemiddelde (bruto) bedrag aan loon in geld (in euro)'. 
VARIABLE LABELS SLNLBPH_mean  'Gemiddelde loon waarover loongeffing werd berekend'.
VARIABLE LABELS SCTRCTLN_mean 'Gemiddelde contractloon in euros'. 
VARIABLE LABELS SAANTCTRCTURENPWK_mean 'Gemiddeld aantal contracturen per week'. 
VARIABLE LABELS SINDLHKORT_Perc_Ja 'Percentage van de inkomstenopgaven (2020) van een individu waarin loonheffingskorting werd toegepast'. 
VARIABLE LABELS SPOLISDIENSTVERBAND_Perc_voltijd  'Percentage van de inkomstenopgaven (2020) van een individu waarbij sprake was van een voltijd dienstverband'. 
VARIABLE LABELS IndArbovOnbepTd_Perc_Ja  'Percentage van de inkomstenopgaven (2020) van een individu waarbij sprake was van een arbeidsovereenkomst voor onbepaalde tijd'. 

RECODE SINDLHKORT_Perc_Ja (100=1) (0=0) (ELSE =999) into Loonheffingskorting.
VARIABLE LABELS Loonheffingskorting 'Indicatie of loonheffingskorting is toegepast in 3 categorieën'.
VALUE LABELS Loonheffingskorting 
1 Ja, het hele jaar
0 Nee, het hele jaar niet
999 Dit wisselde per inkomstenopgave. 

RECODE SPOLISDIENSTVERBAND_Perc_voltijd (100=1) (0=0) (ELSE =999) into Voltijd_dienstverband.
VARIABLE LABELS Voltijd_dienstverband 'Indicatie of er sprake is van een voltijd dienstverband in 3 categorieën'.
VALUE LABELS Voltijd_dienstverband 
1 Ja, het hele jaar
0 Nee, het hele jaar niet
999 Dit wisselde per inkomstenopgave. 

RECODE IndArbovOnbepTd_Perc_Ja (100=1) (0=0) (ELSE =999) into Contract_onbepaalde_tijd.
VARIABLE LABELS Contract_onbepaalde_tijd 'Indicatie of er sprake is van een arbeidsovereenkomst voor onbepaalde tijd in 3 categorieën'.
VALUE LABELS Contract_onbepaalde_tijd 
1 Ja, het hele jaar
0 Nee, het hele jaar niet
999 Dit wisselde per inkomstenopgave. 

Frequencies Loonheffingskorting Voltijd_dienstverband Contract_onbepaalde_tijd.
Execute.

***================ Aanvullende aggregatie van aantal uren per week dat iemand heeft gewerkt ===============================****

AGGREGATE
  /OUTFILE='SPOLIS_agg2'
  /BREAK=RINPERSOON
  /Perc_onder_12=PIN(SWEKARBDUURKLASSE_num 2 2) 
  /Perc_12_20=PIN(SWEKARBDUURKLASSE_num 3 3) 
  /Perc_20_25=PIN(SWEKARBDUURKLASSE_num 4 4) 
  /Perc_25_30=PIN(SWEKARBDUURKLASSE_num 5 5) 
  /Perc_30_35=PIN(SWEKARBDUURKLASSE_num 6 6) 
  /Perc_boven_35=PIN(SWEKARBDUURKLASSE_num 7 7).
Execute. 

IF (Perc_onder_12 > Perc_12_20) Hoofd_arbeidsduurklasse =1.
IF (Perc_onder_12 > Perc_20_25) Hoofd_arbeidsduurklasse =1.
IF (Perc_onder_12 > Perc_25_30) Hoofd_arbeidsduurklasse =1.
IF (Perc_onder_12 > Perc_30_35) Hoofd_arbeidsduurklasse =1.
IF (Perc_onder_12 > Perc_boven_35) Hoofd_arbeidsduurklasse =1.

IF (Perc_12_20 > Perc_onder_12) Hoofd_arbeidsduurklasse =2.
IF (Perc_12_20 > Perc_20_25) Hoofd_arbeidsduurklasse =2.
IF (Perc_12_20 > Perc_25_30) Hoofd_arbeidsduurklasse =2.
IF (Perc_12_20 > Perc_30_35) Hoofd_arbeidsduurklasse =2.
IF (Perc_12_20 > Perc_boven_35) Hoofd_arbeidsduurklasse =2.
  
IF (Perc_20_25 > Perc_onder_12) Hoofd_arbeidsduurklasse =3.
IF (Perc_20_25  > Perc_12_20) Hoofd_arbeidsduurklasse =3.
IF (Perc_20_25  > Perc_25_30) Hoofd_arbeidsduurklasse =3.
IF (Perc_20_25  > Perc_30_35) Hoofd_arbeidsduurklasse =3.
IF (Perc_20_25  > Perc_boven_35) Hoofd_arbeidsduurklasse =3.

IF (Perc_25_30 > Perc_onder_12) Hoofd_arbeidsduurklasse =4.
IF (Perc_25_30  > Perc_12_20) Hoofd_arbeidsduurklasse =4.
IF (Perc_25_30  > Perc_20_25) Hoofd_arbeidsduurklasse =4.
IF (Perc_25_30  > Perc_30_35) Hoofd_arbeidsduurklasse =4.
IF (Perc_25_30  > Perc_boven_35) Hoofd_arbeidsduurklasse =4.

IF (Perc_30_35 > Perc_onder_12) Hoofd_arbeidsduurklasse =5.
IF (Perc_30_35  > Perc_12_20) Hoofd_arbeidsduurklasse =5.
IF (Perc_30_35  > Perc_20_25) Hoofd_arbeidsduurklasse =5.
IF (Perc_30_35  > Perc_25_30) Hoofd_arbeidsduurklasse =5.
IF (Perc_30_35  > Perc_boven_35) Hoofd_arbeidsduurklasse =5.

IF (Perc_boven_35 > Perc_onder_12) Hoofd_arbeidsduurklasse =6.
IF (Perc_boven_35  > Perc_12_20) Hoofd_arbeidsduurklasse =6.
IF (Perc_boven_35  > Perc_20_25) Hoofd_arbeidsduurklasse =6.
IF (Perc_boven_35 > Perc_25_30) Hoofd_arbeidsduurklasse =6.
IF (Perc_boven_35  > Perc_30_35) Hoofd_arbeidsduurklasse =6.

RECODE Hoofd_arbeidsduurklasse (SYSMIS=7).
VALUE LABELS  Hoofd_arbeidsduurklasse
1 Minder dan 12 uur
2 12 tot 20 uur
3 20 tot 25 uur
4 25 tot 30 uur
5 30 tot 35 uur
6 Meer dan 36 uur
7 Niet te bepalen.
Execute. 

IF (Perc_onder_12 =100 OR 
Perc_12_20 =100 OR
Perc_20_25=100 OR
Perc_25_30=100 OR
Perc_30_35=100 OR
Perc_boven_35 =100) Arbeidsduurklasse_vast= 1.
RECODE Arbeidsduurklasse_vast (SYSMIS=0).
Execute. 

**========== Aanmaak van missende waarden voor mensen waar geen SPOLISBUS data voor zijn ===============***

RECODE 
SINDLHKORT_Perc_Ja
SPOLISDIENSTVERBAND_Perc_voltijd
IndArbovOnbepTd_Perc_Ja
Loonheffingskorting
Voltijd_dienstverband
Contract_onbepaalde_tijd (SYSMIS= 888).
Execute. 

VALUE LABELS SINDLHKORT_Perc_Ja
SPOLISDIENSTVERBAND_Perc_voltijd
IndArbovOnbepTd_Perc_Ja
Loonheffingskorting
Voltijd_dienstverband
Contract_onbepaalde_tijd
888 Persoon niet in SPOLISBUS.
Execute. 

IF Missing(SLNINGLD_mean) In_SPOLISBUS=1.
RECODE In_SPOLISBUS (SYSMIS =0).
Execute. 

**================================ Aggegreren van de arbeidssectoren op persoonsniveau ============================**

AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=RINPERSOON
  /SBEID_min=MIN(SBEID) 
  /SBEID_max=MAX(SBEID).

Alter Type SBEID_min SBEID_max (F8).

COMPUTE Controle_verschil=SBEID_max-SBEID_min.
EXECUTE.

RECODE Controle_verschil (0=1) (ELSE=0) into Uniek.

Alter type SBEID (F8). 
COMPUTE ID= NUMBER(RINPERSOON, F9).

* Identify Duplicate Cases.
SORT CASES BY ID(A) SBEID(A).
MATCH FILES
  /FILE=*
  /BY ID
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  Volgorde=1-PrimaryLast.
ELSE.
COMPUTE  Volgorde=Volgorde+1.
END IF.
LEAVE  Volgorde.
FORMATS  Volgorde (f7).
COMPUTE  InDupGrp=Volgorde>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst PrimaryLast InDupGrp.

FREQUENCIES VARIABLES=Volgorde.
EXECUTE.

RANK VARIABLES=SBEID (A) BY ID
  /RANK
  /PRINT=YES
  /TIES=MEAN.

SORT CASES ID(A) SBEID(A). 

* Encoding: UTF-8.

SPLIT FILE OFF.
USE ALL.

***============== SBEID variabelen aanmaken voor transformatie van long naar wide=================**

IF (sbi2008_letter= "A")	Landbouw=1.
IF (sbi2008_letter= "B")	Delfstoffen=1.
IF (sbi2008_letter= "C")	Industrie=1.
IF (sbi2008_letter= "D")	Gas_stoom_lucht=1.
IF (sbi2008_letter= "E")	Afval=1.
IF (sbi2008_letter= "F")	Bouwnijverheid=1.
IF (sbi2008_letter= "G")	Groot_detailhandel=1.
IF (sbi2008_letter= "H")	Vervoer_opslag=1.
IF (sbi2008_letter= "I")	Horeca=1.
IF (sbi2008_letter= "J")	Communicatie=1.
IF (sbi2008_letter= "K")	Financien=1.
IF (sbi2008_letter= "L")	Onroerend_goed=1.
IF (sbi2008_letter= "M")	Advisering_Onderzoek=1.
IF (sbi2008_letter= "N")	Roerende_goederen=1.
IF (sbi2008_letter= "O")	Overheid=1.
IF (sbi2008_letter= "P")	Onderwijs=1.
IF (sbi2008_letter= "Q")	Zorg_Welzijn=1.
IF (sbi2008_letter= "R")	Sport=1.
IF (sbi2008_letter= "S")	Overig_dienstverlening=1.
IF (sbi2008_letter= "T")	Huishoudens_als_werk=1.
IF (sbi2008_letter= "U")	Extraterritoriale_organisaties=1.
Execute. 

RECODE Landbouw
Delfstoffen
Industrie
Gas_stoom_lucht
Afval
Bouwnijverheid
Groot_detailhandel
Vervoer_opslag
Horeca
Communicatie
Financien
Onroerend_goed
Advisering_Onderzoek
Roerende_goederen
Overheid
Onderwijs
Zorg_Welzijn
Sport
Overig_dienstverlening
Huishoudens_als_werk
Extraterritoriale_organisaties (SYSMIS=0). 

CROSSTABS sbi2008_letter BY Landbouw.
CROSSTABS sbi2008_letter BY Delfstoffen.
CROSSTABS sbi2008_letter BY Industrie.
CROSSTABS sbi2008_letter BY Gas_stoom_lucht.
CROSSTABS sbi2008_letter BY Afval.
CROSSTABS sbi2008_letter BY Bouwnijverheid.
CROSSTABS sbi2008_letter BY Groot_detailhandel.
CROSSTABS sbi2008_letter BY Vervoer_opslag.
CROSSTABS sbi2008_letter BY Horeca.
CROSSTABS sbi2008_letter BY Communicatie.
CROSSTABS sbi2008_letter BY Financien.
CROSSTABS sbi2008_letter BY Onroerend_goed.
CROSSTABS sbi2008_letter BY Advisering_Onderzoek.
CROSSTABS sbi2008_letter BY Roerende_goederen.
CROSSTABS sbi2008_letter BY Overheid.
CROSSTABS sbi2008_letter BY Onderwijs.
CROSSTABS sbi2008_letter BY Zorg_Welzijn.
CROSSTABS sbi2008_letter BY Sport.
CROSSTABS sbi2008_letter BY Overig_dienstverlening.
CROSSTABS sbi2008_letter BY Huishoudens_als_werk.
CROSSTABS sbi2008_letter BY Extraterritoriale_organisatie.

AGGREGATE
  /OUTFILE='H:\Subsets voor koppeling\SBEID_Losse sectoren_aggr.sav'
  /BREAK=RINPERSOON
  /Landbouw=SUM(Landbouw) 
  /Delfstoffen=SUM(Delfstoffen) 
  /Industrie=SUM(Industrie) 
  /Gas_stoom_lucht=SUM(Gas_stoom_lucht) 
  /Afval=SUM(Afval) 
  /Bouwnijverheid=SUM(Bouwnijverheid) 
  /Groot_detailhandel=SUM(Groot_detailhandel) 
  /Vervoer_opslag=SUM(Vervoer_opslag) 
  /Horeca=SUM(Horeca) 
  /Communicatie=SUM(Communicatie) 
  /Financien=SUM(Financien) 
  /Onroerend_goed=SUM(Onroerend_goed) 
  /Advisering_Onderzoek=SUM(Advisering_Onderzoek) 
  /Roerende_goederen=SUM(Roerende_goederen) 
  /Overheid=SUM(Overheid) 
  /Onderwijs=SUM(Onderwijs) 
  /Zorg_Welzijn=SUM(Zorg_Welzijn) 
  /Sport=SUM(Sport) 
  /Overig_dienstverlening=SUM(Overig_dienstverlening) 
  /Huishoudens_als_werk=Sum(Huishoudens_als_werk) 
  /Extraterritoriale_organisaties=SUM(Extraterritoriale_organisaties).


**============== Op geaggregeerde set: alle waarden boven de 1 terugzetten naar 1 =====================**

RECODE Landbouw
Delfstoffen
Industrie
Gas_stoom_lucht
Afval
Bouwnijverheid
Groot_detailhandel
Vervoer_opslag
Horeca
Communicatie
Financien
Onroerend_goed
Advisering_Onderzoek
Roerende_goederen
Overheid
Onderwijs
Zorg_Welzijn
Sport
Overig_dienstverlening
Huishoudens_als_werk
Extraterritoriale_organisaties (0=0) (ELSE=1). 

COMPUTE Aantal_sectoren= SUM(Landbouw,Delfstoffen,Industrie,Gas_stoom_lucht,Afval,Bouwnijverheid,Groot_detailhandel,Vervoer_opslag,Horeca,Communicatie,
Financien,Onroerend_goed,Advisering_Onderzoek,Roerende_goederen,Overheid,Onderwijs,Zorg_Welzijn,Sport,Overig_dienstverlening,
Huishoudens_als_werk,Extraterritoriale_organisaties).

Frequencies Aantal_sectoren. 


**============================ Controle op de totale eindset ==============================**

CROSSTABS Sector BY Landbouw.
CROSSTABS Sector BY Delfstoffen.
CROSSTABS Sector BY Industrie.
CROSSTABS Sector BY Gas_stoom_lucht.
CROSSTABS Sector BY Afval.
CROSSTABS Sector BY Bouwnijverheid.
CROSSTABS Sector BY Groot_detailhandel.
CROSSTABS Sector BY Vervoer_opslag.
CROSSTABS Sector BY Horeca.
CROSSTABS Sector BY Communicatie.
CROSSTABS Sector BY Financien.
CROSSTABS Sector BY Onroerend_goed.
CROSSTABS Sector BY Advisering_Onderzoek.
CROSSTABS Sector BY Roerende_goederen.
CROSSTABS Sector BY Overheid.
CROSSTABS Sector BY Onderwijs.
CROSSTABS Sector BY Zorg_Welzijn.
CROSSTABS Sector BY Sport.
CROSSTABS Sector BY Overig_dienstverlening.
CROSSTABS Sector BY Huishoudens_als_werk.
CROSSTABS Sector BY Extraterritoriale_organisaties.


**========================= Selectie van de gemeentecodes uit VSLGWB2020TAB03V2 ============================**

SORT CASES BY RINOBJECTNUMMER(A) SOORTOBJECTNUMMER(A).
MATCH FILES
  /FILE=*
  /BY RINOBJECTNUMMER
  /LAST= Uniek.
VARIABLE LABELS Uniek 'Indicator van unieke gemeentecode'.
VALUE LABELS Uniek
0 Duplicate code
1 Unieke code.
VARIABLE LEVEL Uniek(ORDINAL).
EXECUTE.

Frequencies Uniek.
Execute. 

FILTER OFF.
USE ALL.
SELECT IF (Uniek=1).
EXECUTE.

****========================== Kiezen van laatste huishouden in GBAHUISHOUDENS2019BUSV1 =======================****

String Aanvang (a11).	
COMPUTE Aanvang = DATUMAANVANGHH.
Alter type Aanvang(Sdate10). 

String Einde(a11).
COMPUTE Einde= DATUMEINDEHH.
Alter type Einde(Sdate10). 

* Identify Duplicate Cases.
SORT CASES BY RINPERSOON(A) Aanvang(A).
MATCH FILES
  /FILE=*
  /BY RINPERSOON
  /LAST= Recent.
VARIABLE LABELS Recent 'Indicator van meeste recente huishouden'.
VALUE LABELS  Recent 
0 Huishouden in het verleden
1 Meest recente huishouden.
VARIABLE LEVEL Recent (ORDINAL).
EXECUTE.

Frequencies Recent.
Execute. 

**======================= Enkel het meest recente huishouden bewaren ============================****

DATASET COPY  Huidig_HH.
DATASET ACTIVATE  Huidig_HH.
FILTER OFF.
USE ALL.
SELECT IF (Recent=1).
EXECUTE.

**============================== GBAADRESOBJECT2019BUSV1 ==============================***

String Aanvang (a11).	
COMPUTE Aanvang = GBADATUMAANVANGADRESHOUDING.
Alter type Aanvang(Sdate10). 

String Einde(a11).
COMPUTE Einde= GBADATUMEINDEADRESHOUDING.
Alter type Einde(Sdate10). 

SAVE OUTFILE='H:\Werkmap Ester\GBAADRESOBJECT2019BUSV1.sav'
 /COMPRESSED. 

* Identify Duplicate Cases.
SORT CASES BY RINPERSOON(A) Aanvang(A).
MATCH FILES
  /FILE=*
  /BY RINPERSOON
  /LAST= Recent.
VARIABLE LABELS Recent 'Indicator van meeste recente woonadres'.
VALUE LABELS  Recent 
0 Woonadres in het verleden
1 Meest recente woonadres.
VARIABLE LEVEL Recent (ORDINAL).
EXECUTE.

Frequencies Recent.
Execute. 

SAVE OUTFILE='H:\Werkmap Ester\GBAADRESOBJECT2019BUSV1.sav'
 /COMPRESSED. 

**===== Enkel het meest recente woonadres bewaren =====****

DATASET COPY  Huidig_Adres.
DATASET ACTIVATE  Huidig_Adres.
FILTER OFF.
USE ALL.
SELECT IF (Recent=1).
EXECUTE.

SAVE OUTFILE='H:\Subsets voor koppeling\Woonadres.sav'
  /COMPRESSED.

**==== Alleen mensen waarvoor GBADATUMEINDEADRESHOUDING in de toekomst ligt selecteren ===***
**========= Peildatum is gebaseerd op de eerste corona besmetting in 2020 (01-03-2020) ========*****

Split file off.
Use all.

If (Aanvang > date.dmy(01,01,2020) OR Einde < date.dmy(01,01,2020)) Huidige_bewoning =0.
RECODE Huidige_bewoning (SYSMIS=1).
Execute. 

Frequencies Huidige_bewoning.
Execute. 

CROSSTABS Huidige_bewoning.
Execute. 

SORT CASES  BY Huidige_bewoning.
SPLIT FILE LAYERED BY Huidige_bewoning.

Frequencies Einde
 /Statistics= MINIMUM MAXIMUM
 /format=notable.
Execute. 

SAVE OUTFILE='H:\Subsets voor koppeling\Woonadres.sav'
  /COMPRESSED.













