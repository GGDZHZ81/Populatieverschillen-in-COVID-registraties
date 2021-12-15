* Encoding: UTF-8.

*Impute Missing Data Values.

**=================== Controle op codering van missende waarden ============**

Frequencies
Opleidingsniveau ETNGRP GBAGESLACHT 
Voltijd_dienstverband Contract_onbepaalde_tijd In_Osiris In_CoronIT
Bron Huishouden Huishoudgrootte_cats.
Execute. 

RECODE Huishouden (99=SYSMIS).
RECODE Woningbezet (9=SYSMIS). 

Frequencies 
 INHBESTINKH  bev_dich_wijk Leeftijd
  /format=notable
  /statistics= mean minimum maximum. 

RECODE  Voltijd_dienstverband Contract_onbepaalde_tijd (999=4).
Execute. 
Frequencies Voltijd_dienstverband Contract_onbepaalde_tijd.
Execute. 

VALUE LABELS Voltijd_dienstverband Contract_onbepaalde_tijd
Voltijd_dienstverband Contract_onbepaalde_tijd
0 Nee, het hele jaar 2020 niet
1 Ja, het hele jaar 2020 wel
4 Wisselend gedurende het jaar 2020.
Execute. 

**==================== Zorgen dat alle variabelen in het juiste format staan ==========================**

VARIABLE LEVEL INHBESTINKH Leeftijd bev_dich_wijk SLNINGLD_mean (scale).
VARIABLE LEVEL ETNGRP Bron GBAGESLACHT Huishouden wc2020 Voltijd_dienstverband Contract_onbepaalde_tijd (nominal). 
VARIABLE LEVEL In_Osiris In_CoronIT Woningbezit (nominal).
VARIABLE LEVEL Opleidingsniveau Huishoudgrootte_cats (ordinal). 

**=================================Imputatie proces =====================================***

DATASET DECLARE Imp.
MULTIPLE IMPUTATION Opleidingsniveau INHBESTINKH Bron Huishouden Woningbezit Huishoudgrootte_cats
  bev_dich_wijk ETNGRP Leeftijd GBAGESLACHT In_Osiris In_CoronIT wc2020
  /IMPUTE METHOD=AUTO NIMPUTATIONS=5 MAXPCTMISSING=NONE MAXMODELPARAM =5000
  /CONSTRAINTS ETNGRP  (ROLE=IND)
  /CONSTRAINTS Leeftijd  (ROLE=IND)
  /CONSTRAINTS GBAGESLACHT  (ROLE=IND)
  /CONSTRAINTS wc2020  (ROLE=IND)
  /CONSTRAINTS In_Osiris ( ROLE=DEP)
  /CONSTRAINTS In_CoronIT ( ROLE=DEP)
  /MISSINGSUMMARIES NONE 
  /IMPUTATIONSUMMARIES MODELS 
  /OUTFILE IMPUTATIONS=Imp.

Save outfile= 'H:\Datasets voor analyse\20210417_Imputed.sav'
/COMPRESSED.

SORT CASES  BY Imputation_.
SPLIT FILE LAYERED BY Imputation_.

Frequencies Opleidingsniveau. 

Frequencies INHBESTINKH 
/format=notable
/statistics= mean median minimum maximum.
Execute. 





