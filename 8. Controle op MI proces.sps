* Encoding: UTF-8.

**=============================== Controle op MI proces ==================================**

SORT CASES  BY Imputation_.
SPLIT FILE LAYERED BY Imputation_.

Frequencies  INHBESTINKH bev_dich_wijk
 /format=notable
 /statistics= mean median minimum maximum.
 Execute. 

Frequencies
Opleidingsniveau
ETNGRP
INHBBIHJ
INHAHL 
INHSAMHH 
INHEHALGR.
Execute. 

**=============== Niet geimputeerd ===================**

Frequencies
GBAGESLACHT
wc2020
Voltijd_dienstverband
Contract_onbepaalde_tijd
In_Osiris
In_CoronIT.
Execute. 

Frequencies Leeftijd 
 /format=notable
 /statistics= mean median minimum maximum.
 Execute. 

* Encoding: UTF-8.

SORT CASES  BY Imputation_.
SPLIT FILE LAYERED BY Imputation_.

Frequencies ETNGRP.
Frequencies Quintile_Inkomen. 
Frequencies Opleidingsniveau. 
Frequencies Bron. 
Frequencies Huishouden.
Frequencies Huishoudgrootte_cats.

Frequencies bev_dich_wijk
 /format=notable
 /statistics=mean. 

