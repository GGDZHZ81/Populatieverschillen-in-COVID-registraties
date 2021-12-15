* Encoding: UTF-8.

***======================================== Samenvoegen van categorieen =========================================**

COMPUTE Bron= Number(INHBBIHJ, F10).
COMPUTE Bron= INHBBIHJ.
RECODE Bron (11=1) (12=2) (13=3) (14=3) (21=4) (22=4) (23=4) (24=4) (25=5) (26=6) (30=7).
CROSSTABS INHBBIHJ BY Bron.

COMPUTE Huishouden= number (INHSAMHH, F10). 
RECODE INHSAMHH (11=1) (12=1) (13=1) (14=1) (21=2) (22=2) (31=3) (32=3) (33=3)
(41=4) (42=4) (43=4) (51=5) (52=5) (53=5) (54=5) (55=5) (56=5) (57=5) (58=5) (71=7) (88=SYSMIS) into Huishouden.
Crosstabs INHSAMHH BY Huishouden.

COMPUTE Woningbezit = number(INHEHALGR, F10). 

RECODE INHAHL (1 =1) (2 =2) (3 thru 4=3) (5 thru highest=4) into Huishoudgrootte_cats. 
Frequencies Huishoudgrootte_cats.
CROSSTABS Huishoudgrootte_cats BY INHAHL.

VALUE LABELS Bron
1 Loon
2 Directie
3 Zelfstandige
4 Uitkering
5 Pensioen
6 Stufi
7 Vermogen.
Execute. 

Value labels Huishouden
1 Eenpersoonshuishouden
2 Paar zonder kinderen
3 Paar met kinderen
4 Eenoudergezin
5 Meerpersoonshuishoudens
7 Instellingen en tehuizen.
Execute.

VALUE LABELS Huishoudgrootte_cats
1 Een persoon
2 Twee personen
3 Drie tot vier personen
4 Vijf personen of meer. 
Execute. 

VALUE LABELS Woningbezit
1 Koopwoning
2 Huurwoning zonder toeslag
3. Huurwoning met toeslag
4. Instiutioneel huishouden.
Execute. 

FREQUENCIES VARIABLES=INHBESTINKH
  /FORMAT=NOTABLE
  /NTILES=5
  /ORDER=ANALYSIS.

** Hele populatie**

If (INHBESTINKH < 25931.60) Quintile_Inkomen=1. 
If (INHBESTINKH >= 25931.60 AND INHBESTINKH < 38452.20) Quintile_Inkomen=2.
If (INHBESTINKH >= 38452.20 AND INHBESTINKH < 52819.00) Quintile_Inkomen=3.
If (INHBESTINKH >= 52819.00 AND INHBESTINKH < 70365.00) Quintile_Inkomen=4.
If (INHBESTINKH >= 70365.00) Quintile_Inkomen=5.

**Subgroep van werkenden**

If (INHBESTINKH < 32324) Quintile_Inkomen=1. 
If (INHBESTINKH >= 32324 AND INHBESTINKH < 47292) Quintile_Inkomen=2.
If (INHBESTINKH >= 47292 AND INHBESTINKH < 60258) Quintile_Inkomen=3.
If (INHBESTINKH >= 60258 AND INHBESTINKH < 77251) Quintile_Inkomen=4.
If (INHBESTINKH >= 77251) Quintile_Inkomen=5.

****========================== Sectorindeling =============================***

FREQUENCIES sbi20082digit sbi2008_letter.

IF (sbi2008_letter='C') Sector=1.
IF (sbi2008_letter='F') Sector=2.
IF (sbi2008_letter='G') Sector=3.
IF (sbi2008_letter='H') Sector=4.
IF (sbi2008_letter='I') Sector=5.
IF (sbi2008_letter='J') Sector=6.
IF (sbi2008_letter='K') Sector=7.
IF (sbi2008_letter='M') Sector=8.
IF (sbi2008_letter='N') Sector=9.
IF (sbi2008_letter='O') Sector=10.
IF (sbi2008_letter='P') Sector=11.
IF (sbi2008_letter='Q') Sector=12.
IF (sbi2008_letter='A' OR sbi2008_letter='B' OR sbi2008_letter='D' OR sbi2008_letter='E' OR sbi2008_letter='L' OR 
sbi2008_letter='R' OR sbi2008_letter='S' OR sbi2008_letter='T' OR sbi2008_letter='U') Sector=13.

VARIABLE LABELS Sector 'Sector'.
VALUE LABELS Sector
1 'Industrie'
2 'Bouw'
3 'Groot- en detailhandel'
4 'Vervoer en handel'
5 'Horeca'
6 'Informatie en communicatie'
7 'Financiële instellingen'
8 'Advisering, onderzoek en overige specialistische zakelijke dienstverlening'
9 'Verhuur van roerende goederen en overige zakelijke dienstverlening'
10 'Openbaar bestuur, overheidsdiensten en verplichte sociale verzekeringen'
11 'Onderwijs'
12 'Gezondheidszorg en welzijn'
13 'Overig'.
EXECUTE.

**================== Aanmaak filter voor de subgroep van werkenden ==================**

COMPUTE Werkenden =0.
IF (Sector >0) Werkenden=1.
FORMATS Sector Werkenden (F8.0).

SORT CASES  BY Imputation_.
SPLIT FILE LAYERED BY Imputation_.
Frequencies Werkenden. 

Split file off.
Use all. 

SORT CASES  BY Imputation_ sbi2008_letter.
SPLIT FILE LAYERED BY Imputation_ sbi2008_letter.
Frequencies sbi20082digit.

**=========== Combineren van huishoudsamenstelling en huishoudgrootte ===================**

RENAME VARIABLES Huishouden= Huishouden_oud.
COMPUTE Huishouden = Huishouden_oud. 
IF (Huishouden_oud =1) AND ( Huishoudgrootte_cats=1) Huishouden = 1.
IF (Huishouden_oud =7) AND ( Huishoudgrootte_cats=1) Huishouden = 7.
IF (Huishouden_oud =5) AND ( Huishoudgrootte_cats > 1) Huishouden = 5.
IF (Huishouden_oud =7) AND ( Huishoudgrootte_cats > 1) Huishouden = 8.

Value labels Huishouden
1 Eenpersoonshuishouden particulier
2 Paar zonder kinderen
3 Paar met kinderen
4 Eenoudergezin
5 Meerpersoonshuishoudens particulier
7 Eenpersoonshuishouden in instellingen en tehuizen
8 Meerpersoonshuishouden in insttelingen en tehuizen.
Execute.

CROSSTABS Huishouden BY Huishouden_oud.
CROSSTABS Huishouden BY Huishoudgrootte_cats.

* Encoding: UTF-8.

*==== Hercategorisering migratieachtergrond ===**

Frequencies WERELDDEEL. 
*-> Oceanie is te klein, bij Amerika voegen.

COMPUTE ETNGRP2 = ETNGRP.
COMPUTE WERELDDEEL2 = WERELDDEEL.

Recode ETNGRP2 (5=SYSMIS) (6=SYSMIS).
Recode WERELDDEEL2 (1=5) (2=6) (3=8) (4=9) (5=6).

IF Missing(ETNGRP2) ETNGRP2= WERELDDEEL2. 

VALUE LABELS ETNGRP2
0 Autochtoon
1 Marokko
2 Turkije
3 Suriname
4 Voormalige Antillen & Aruba
5 Overig Afrika
6 Overig Amerika & Oceanie
7 Onbekend
8 Overig Azië
9 Overig Europa.
Execute. 

CROSSTABS ETNGRP BY ETNGRP2.
DELETE VARIABLES WERELDDEEL2. 

**========================= Leeftijdscategorieen voor de hele en de werkende populatie===============================***

RECODE Leeftijd (lowest thru 12=1) (12 thru 18=2) (18 thru 30=3) (30 thru 45 =4) (45 thru 65 =5)  (65 thur highest =6) into Leeftijd_cats.
RECODE Leeftijd (lowest thru 30=1) (30 thru 40=2) (40 thru 50=3) (50 thur highest =4) into Leeftijd_cats_w.
IF (Werkend=0 AND Leeftijd <18) Leeftijd_cats_w=$SYSMIS. 

**====================================== Kwintielen van bevolkingsdichtheid ===================================**

RECODE bev_dich_wijk  (lowest thru 1082=1) (1082 thru 3756=2) (3756 thru 5410=3) (5410 thru 6947 =4) (6947 thru highest =5) into Dichtheid. 

















