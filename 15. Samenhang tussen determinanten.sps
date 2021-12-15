* Encoding: UTF-8.
************** Syntax samenhang analyseren ****************
***************model 3 (complete bevolking)*******************

** Opleidingsniveau 
** Migratieachtergrond 
** Huishoudinkomen 
** Bron van inkomen 
** Leeftijd 
** Geslacht
** Huishoudsamenstelling 
** Bevolkingsdichtheid 

* Leeftijd categorieën aanmaken

IF (Leeftijd <= 11) Leeftijd_Cat=1.
IF (Leeftijd >= 12 & Leeftijd < 18) Leeftijd_Cat=2.
IF (Leeftijd >= 18 & Leeftijd < 30) Leeftijd_Cat=3.
IF (Leeftijd >= 30 & Leeftijd < 45) Leeftijd_Cat=4.
IF (Leeftijd >= 45 & Leeftijd < 65) Leeftijd_Cat=5.
IF (Leeftijd >= 65) Leeftijd_Cat=6.
VARIABLE LABELS  Leeftijd_Cat 'Leeftijd in categorieën'.
VALUE LABELS Leeftijd_Cat
1 'Jonger dan 12 jaar'
2 '12-18 jaar'
3 '18-30 jaar'
4 '30-45 jaar'
5 '45-65 jaar'
6 '65 jaar en ouder'.
EXECUTE.
FREQUENCIES Leeftijd_Cat.

** DUBBEL CHECK

CROSSTABS
  /TABLES=Leeftijd BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Bevolkingsdichtheid in kwintielen
* Visual Binning.

RECODE  bev_dich_wijk (MISSING=COPY) (LO THRU 1082=1) (LO THRU 3756=2) (LO THRU 5410=3) (LO THRU 
    6946=4) (LO THRU HI=5) (ELSE=SYSMIS) INTO Bevolkingsdichtheid.
VARIABLE LABELS  Bevolkingsdichtheid 'Bevolkingsdichtheid (wijkniveau) in aantal inwoners per '+
    'vierkante km (Binned)'.
FORMATS  Bevolkingsdichtheid (F5.0).
VALUE LABELS  Bevolkingsdichtheid 1 'Q1' 2 'Q2' 3 'Q3' 4 'Q4' 5 'Q5'.
VARIABLE LEVEL  Bevolkingsdichtheid (ORDINAL).
EXECUTE.

*OPLEIDINGSNIVEAU
* Opleidingsniveau x migratieachtergrond

CROSSTABS
  /TABLES=Opleidingsniveau BY ETNGRP
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x huishoudinkomen

CROSSTABS
  /TABLES=Opleidingsniveau BY Quintile_Inkomen
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x bron van inkomsten
 
CROSSTABS
  /TABLES=Opleidingsniveau BY Bron
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x leeftijd

CROSSTABS
  /TABLES=Opleidingsniveau BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x geslacht
 
CROSSTABS
  /TABLES=Opleidingsniveau BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x huishoudsamenstelling
 
CROSSTABS
  /TABLES=Opleidingsniveau BY Huishouden
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x bevolkingsdichtheid 

CROSSTABS
  /TABLES=Opleidingsniveau BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

*MIGRATIEACHTERGROND
* Migratieachtergrond x huishoudinkomen
 
CROSSTABS
  /TABLES=ETNGRP BY Quintile_Inkomen
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x bron van inkomen
 
CROSSTABS
  /TABLES=ETNGRP BY Bron
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x leeftijd
 
CROSSTABS
  /TABLES=ETNGRP BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x geslacht
 
CROSSTABS
  /TABLES=ETNGRP BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x huishoudsamenstelling
 
CROSSTABS
  /TABLES=ETNGRP BY Huishouden
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x bevolkingsdichtheid
 
CROSSTABS
  /TABLES=ETNGRP BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* HUISHOUDINKOMEN
* Huishoudinkomen x bron van inkomen
 
CROSSTABS
  /TABLES=Quintile_Inkomen BY Bron
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Huishoudinkomen x leeftijd
 
CROSSTABS
  /TABLES=Quintile_Inkomen BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Huishoudinkomen x geslacht
 
CROSSTABS
  /TABLES=Quintile_Inkomen BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Huishoudinkomen x huishoudsamenstelling
 
CROSSTABS
  /TABLES=Quintile_Inkomen BY Huishouden
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Huishoudinkomen x bevolkingsdichtheid
 
CROSSTABS
  /TABLES=Quintile_Inkomen BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* BRON VAN INKOMEN
* Bron van inkomen x Leeftijd
 
CROSSTABS
  /TABLES= Bron BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Bron van inkomen x Geslacht
 
CROSSTABS
  /TABLES= Bron BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Bron van inkomen x huishoudsamenstelling
 
CROSSTABS
  /TABLES= Bron BY Huishouden
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Bron van inkomen x Bevolkingsdichtheid
 
CROSSTABS
  /TABLES= Bron BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* LEEFTIJD
* Leeftijd x geslacht

CROSSTABS
  /TABLES=  Leeftijd_Cat BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Leeftijd x Huishoudsamenstelling

CROSSTABS
  /TABLES=  Leeftijd_Cat BY Huishouden
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Leeftijd x Bevolkingsdichtheid

CROSSTABS
  /TABLES=  Leeftijd_Cat BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* GESLACHT
* Geslacht x huishoudsamenstelling

CROSSTABS
  /TABLES=  GBAGeslacht BY Huishouden
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Geslacht x Bevolkingsdichtheid

CROSSTABS
  /TABLES=  GBAGeslacht BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* HUISHOUDSAMENSTELLING
* Huishoudsamenstelling x Bevolkingsdichtheid

CROSSTABS
  /TABLES=  Huishouden BY Bevolkingsdichtheid
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Encoding: UTF-8.
*************** Syntax - samenhang variabelen in de werkende populatie dataset ****************

*** Variabelen in model 6:
** Sector
** Persoonlijk inkomen
** Opleidingsniveau
** Migratieachtergrond
** Leeftijd (categoriaal)
** Geslacht
** Vast/flexibel
** Full/parttime

* Filter aanzetten voor alleen werkenden (12 jaar en ouder)

USE ALL.
COMPUTE filter_$=(Werkenden = 1 & Leeftijd_Cat > 1).
VARIABLE LABELS filter_$ 'Werkenden = 1 & Leeftijd_Cat > 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

** Filter off optie

FILTER OFF.

* SECTOR
* Sector x persoonlijk inkomen

CROSSTABS
  /TABLES=Sector BY Geld_quintiles
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Sector x Opleidingsniveau

CROSSTABS
  /TABLES=Sector BY Opleidingsniveau
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Sector x migratieachtergrond

CROSSTABS
  /TABLES=Sector BY ETNGRP
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Sector x leeftijd

CROSSTABS
  /TABLES=Sector BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Sector x geslacht

CROSSTABS
  /TABLES=Sector BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Sector x full/part

CROSSTABS
  /TABLES=Sector BY Voltijd_dienstverband
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Sector x vast/flex

CROSSTABS
  /TABLES=Sector BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* PERSOONLIJK INKOMEN
* Persoonlijk inkomen x Opleidingsniveau

CROSSTABS
  /TABLES=Geld_quintiles BY Opleidingsniveau
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Persoonlijk inkomen x migratieachtergrond

CROSSTABS
  /TABLES=Geld_quintiles BY ETNGRP
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Persoonlijk inkomen x leeftijd

CROSSTABS
  /TABLES=Geld_quintiles BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Persoonlijk inkomen x geslacht

CROSSTABS
  /TABLES=Geld_quintiles BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Persoonlijk inkomen x full/part

CROSSTABS
  /TABLES=Geld_quintiles BY Voltijd_dienstverband
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Persoonlijk inkomen x vast/flex

CROSSTABS
  /TABLES=Geld_quintiles BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

*OPLEIDINGSNIVEAU
* Opleidingsniveau x migratieachtergrond

CROSSTABS
  /TABLES=Opleidingsniveau BY ETNGRP
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x leeftijd

CROSSTABS
  /TABLES=Opleidingsniveau BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x geslacht

CROSSTABS
  /TABLES=Opleidingsniveau BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x full/part

CROSSTABS
  /TABLES=Opleidingsniveau BY Voltijd_dienstverband
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Opleidingsniveau x vast/flex

CROSSTABS
  /TABLES=Opleidingsniveau BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* MIGRATIEACHTERGROND
* Migratieachtergrond x Leeftijd

CROSSTABS
  /TABLES=ETNGRP BY Leeftijd_Cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x geslacht

CROSSTABS
  /TABLES=ETNGRP BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x full/part

CROSSTABS
  /TABLES=ETNGRP BY Voltijd_dienstverband
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Migratieachtergrond x vast/flex

CROSSTABS
  /TABLES=ETNGRP BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* LEEFTIJD
* Leeftijd x Geslacht

CROSSTABS
  /TABLES=Leeftijd_Cat BY GBAGeslacht
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Leeftijd x full/part

CROSSTABS
  /TABLES=Leeftijd_Cat BY Voltijd_dienstverband
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Leeftijd x vast/flex

CROSSTABS
  /TABLES=Leeftijd_Cat BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* GESLACHT
* Geslacht x full/part

CROSSTABS
  /TABLES=GBAGeslacht BY Voltijd_dienstverband
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Geslacht x vast/flex

CROSSTABS
  /TABLES=GBAGeslacht BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

* FULLTIME/PARTIME
* full/part x vast/flex

CROSSTABS
  /TABLES=Voltijd_dienstverband BY Contract_onbepaalde_tijd
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

