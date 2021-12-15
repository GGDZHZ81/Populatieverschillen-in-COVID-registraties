* Encoding: UTF-8.
**==== Aanmaak wel/ niet getest, wel/ niet besmet en de combinatie daarvan ====***

RECODE Aantal_keer_besmet (1=1) (2=1) (ELSE=0) Into In_Osiris.
Execute. 
Value Labels In_Osiris
1 Besmetting geregistreerd in Osiris
0 Besmetting niet geregistreerd in Osiris.
Execute. 

RECODE Aantal_testmomenten (1 THRU 13=1) (ELSE=0) into In_CoronIT.
Execute. 
Value Labels In_CoronIT
1 Test geregistreerd in CoronIT
0 Test niet geregistreerd in CoronIT.
Execute. 

CROSSTABS Aantal_testmomenten BY In_CoronIT.

IF (In_CoronIT =0 AND  In_Osiris =0) Buiten_GGD_getest=0. 
IF (In_CoronIT =0 AND  In_Osiris =1) Buiten_GGD_getest=1.
IF (In_CoronIT =1 AND  In_Osiris =1) Buiten_GGD_getest=2.
IF (In_CoronIT =1 AND  In_Osiris =0) Buiten_GGD_getest=3.

VARIABLE LABELS Buiten_GGD_getest 'Classificatie van groepen op basis van voorkomen in CoronIT en/of HPzone'. 
VALUE LABELS Buiten_GGD_getest
0 Niet getest en niet geregistreerd besmet
1 Wel besmet maar buiten de GGD getest
2 Wel besmet en binnen de GGD getest
3 Negatief getest en daarom niet geregistreerd in Osiris.

FREQUENCIES Buiten_GGD_getest.
Execute. 

CROSSTABS In_Osiris BY In_CoronIT. 
CROSSTABS Buiten_GGD_getest BY In_CoronIT. 
CROSSTABS Buiten_GGD_getest BY In_Osiris. 

SORT CASES  BY Bronbestand.
SPLIT FILE LAYERED BY Bronbestand.

Frequencies In_Osiris In_CoronIT.
Execute. 

SPLIT FILE OFF.
USE ALL. 

*** ========Aanmaak geboortedatum en leeftijd ==========***

COMPUTE Geboortejaar_num = number(GBAGEBOORTEJAAR, F2).
COMPUTE Geboortemaand_num = number(GBAGEBOORTEMAAND, F2). 
COMPUTE Geboortedag_num = number(GBAGEBOORTEDAG, F2). 

* Date and Time Wizard: Geboortedatum.
COMPUTE  Geboortedatum=DATE.DMY(Geboortedag_num, Geboortemaand_num, Geboortejaar_num).
VARIABLE LABELS  Geboortedatum "Geboortedatum".
VARIABLE LEVEL Geboortedatum (SCALE).
FORMATS  Geboortedatum (EDATE8).
VARIABLE WIDTH  Geboortedatum(8).
EXECUTE.

**==== Aanmaak wel/ niet getest, wel/ niet besmet en de combinatie daarvan ====***

RECODE Aantal_keer_besmet (1=1) (2=1) (ELSE=0) Into In_Osiris.
Execute. 
Value Labels In_Osiris_ja_nee
1 Besmetting geregistreerd in Osiris
0 Besmetting niet geregistreerd in Osiris.
Execute. 

RECODE Aantal_testmomenten (1 THRU 13=1) (ELSE=0) into In_CoronIT.
Execute. 
Value Labels In_CoronIT_ja_nee
1 Test geregistreerd in CoronIT
0 Test niet geregistreerd in CoronIT.
Execute. 

CROSSTABS Aantal_testmomenten BY In_CoronIT_ja_nee.

IF (In_CoronIT =0 AND  In_Osiris =0) Buiten_GGD_getest=0. 
IF (In_CoronIT =0 AND  In_Osiris =1) Buiten_GGD_getest=1.
IF (In_CoronIT =1 AND  In_Osiris =1) Buiten_GGD_getest=2.
IF (In_CoronIT =1 AND  In_Osiris =0) Buiten_GGD_getest=3.

VALUE LABELS Buiten_GGD_getest
0 Niet getest en niet geregistreerd besmet
1 Wel besmet maar buiten de GGD getest
2 Wel besmet en binnen de GGD getest
3 Negatief getest en daarom niet geregistreerd in Osiris.

FREQUENCIES Buiten_GGD_getest.
Execute. 

CROSSTABS In_Osiris_ja_nee BY In_CoronIT. 
CROSSTABS Buiten_GGD_getest BY In_CoronIT. 
CROSSTABS Buiten_GGD_getest BY In_Osiris. 

SORT CASES  BY Bronbestand.
SPLIT FILE LAYERED BY Bronbestand.

Frequencies In_Osiris In_CoronIT.
Execute. 

***============ Leeftijd berekenen op 01-01-2020==========***

COMPUTE Peildatum= DATE.DMY(01,01,2020).
ALTER TYPE Peildatum(ADATE8). 
Execute. 

* Date and Time Wizard: Leeftijd.
COMPUTE  Leeftijd=DATEDIF(Peildatum, Geboortedatum, "years").
VARIABLE LABELS  Leeftijd "Leeftijd in jaren op 1 jan 2020".
VARIABLE LEVEL  Leeftijd (SCALE).
FORMATS  Leeftijd (F5.0).
VARIABLE WIDTH  Leeftijd(5).
EXECUTE.

Frequencies Leeftijd
/Statistics= mean, MINIMUM, MAXIMUM
/format=notable.
Execute. 

RECODE Leeftijd (lowest thru 12 =1) (13 thru 18=2) (19 thru 65=3) (66 thru highest =4) into Leeftijd_cats.
VALUE LABELS Leeftijd_cats
1 Onder de 12 jaar
2 13 tot 18 jaar
3 19 tot 65 jaar
4 Ouder dan 65 jaar.
Execute. 

* Encoding: UTF-8.
** SYNTAX - Opleidingsniveau recoding

RECODE OPLNIVSOI2016AGG4HBMETNIRWO (1110=1) (1111=1) (1112=1) (1210=1)
(1211=1) (1212=1) (1213=1) (1220=1) (1221=1) (1222=1) (2110=2) (2111=2) (2112=2) (2120=2) (2121=2) 
(2130=2) (2131=2) (2132=2) (3110=3) (3111=3) (3112=3) (3113=3) (3210=3) (3211=3) (3212=3) (3213=3) (MISSING=9999) INTO Opleidingsniveau.
VARIABLE LABELS Opleidingsniveau ' Opleidingsniveau categoriaal'.
VALUE LABELS Opleidingsniveau
1 ‘Laag’
2 ‘Middelbaar’
3 ‘Hoog’
9999 'Missing'.
EXECUTE.
FREQUENCIES Opleidingsniveau.

VALUE LABELS GGD_Regio
1 Zuid-Holland Zuid
2 Rotterdam Rijnmond
3 Zeeland
4 Buiten de regio. 
Execute. 

Frequencies GGD_Regio.
Execute.

CROSSTABS GGD_Regio BY gem2020.
CROSSTABS GGD_Regio BY ZuidWest_NL.
CROSSTABS GGD_regio BY In_CoronIT.
CROSSTABS GGD_regio BY In_Osiris.
Execute. 


***============================ Aanmaak huishoudsamenstelling ==================================***

IF (INHSAMHH='11' OR INHSAMHH='12' OR INHSAMHH='13' OR INHSAMHH='14') Huishoudsamenstelling=1.
IF (INHSAMHH='21' OR INHSAMHH='22') Huishoudsamenstelling=2.
IF (INHSAMHH='31') Huishoudsamenstelling=3.
IF (INHSAMHH='32') Huishoudsamenstelling=4.
IF (INHSAMHH='33') Huishoudsamenstelling=5.
IF (INHSAMHH='41' OR INHSAMHH='42' OR INHSAMHH='43') Huishoudsamenstelling=6.
IF (INHSAMHH='51' OR INHSAMHH='52' OR INHSAMHH='53' OR INHSAMHH='54') Huishoudsamenstelling=7.
IF (INHSAMHH='55' OR INHSAMHH='56' OR INHSAMHH='57') Huishoudsamenstelling=8.
IF (INHSAMHH='58') Huishoudsamenstelling=9.
IF (INHSAMHH='71') Huishoudsamenstelling=10.
IF (INHSAMHH='88') Huishoudsamenstelling=11.

RECODE Huishoudsamenstelling (SYSMIS=12).
Execute. 

VARIABLE LABELS Huishoudsamenstelling 'Huishoudsamenstelling recoded'.

VALUE LABELS Huishoudsamenstelling
1 'Eenpersoonshuishouden'
2 'Paar zonder kinderen'
3 'Paar met uitsluitend minderj. kinderen'
4 'Paar met minderj. en meerderj. kinderen'
5 'Paar met uitsluitend meerderj. kinderen'
6 'Eenoudergezin'
7 'Paar met/zonder kinderen en andere inwonende(n)'
8 'Eenoudergezin met andere inwonende(n)'
9 'Overig meerpersoonshuishouden'
10 'Bevolking in instellingen, inrichtingen en tehuizen'
11 'Onbekend'
12 'Missing'.

FREQUENCIES Huishoudsamenstelling.




