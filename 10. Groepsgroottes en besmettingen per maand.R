
##=============================== Groepsgroottes en incidenties per categorie per maand ========================##

library(haven)
setwd("H:\\Datasets voor analyse")
Long <- read_sav("210614_Finale set_long.sav")

library(readxl)
Labels_totaal <- read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Baseline_totaal")
Labels_werkend <- read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Baseline_werkend")

##===================== Maanden waarin niet geregistreerd is op nul zetten ==================================##

Long$Besmet[Long$Besmet==888] <- 0
Long$Getest[Long$Getest==888] <- 0
Long$Positief_CoronIT[Long$Positief_CoronIT==99] <- 0

#==============Zorgen dat Opleidingsniveau en Selectievariabele "werkend" op nul worden gezet wanneer inwoners <18 zijn====##

Long$Leeftijd_num <- as.numeric(Long$Leeftijd)
Long$Opleidingsniveau[Long$Leeftijd_num < 18] <- 0
Long$Werkend <- Long$Sector
Long$Werkend[is.na(Long$Sector)] <- 0
Long$Werkend[Long$Sector!=0 & Long$Leeftijd_num >=18] <- 1
Long_sub <- Long[which(Long$Werkend==1),]


Selectie_totaal <- c("Besmet","ETNGRP","Quintile_Inkomen","Opleidingsniveau", 
                     "Bron","Leeftijd_cats","GBAGESLACHT","Huishouden","Dichtheid", "Maand", "Getest", "Positief_CoronIT")
Selectie_werkend <- c("Besmet", "Sector", "ETNGRP","Quintile_Inkomen","Opleidingsniveau", 
                      "Leeftijd_cat_w","GBAGESLACHT","Contract_onbepaalde_tijd", 
                      "Voltijd_dienstverband", "Maand", "SLNINGLD_mean", "Getest","Positief_CoronIT")
  
Long_n <- Long[Selectie_totaal]
Long_sub_n <- Long_sub[Selectie_werkend]

Long_n$Aantal <-1
Long_sub_n$Aantal <-1

Long_sub_n$Leeftijd_cat <- Long_sub_n$Leeftijd_cat_w

library(dplyr)
Migratie_maand_n <- Long_n %>%
    group_by(ETNGRP, Maand) %>%
    summarise(Besmet= sum(Besmet),
             Totaal= sum(Aantal),
             Getest=sum(Getest),
             Positief_CoronIT= sum(Positief_CoronIT))
Migratie_maand_n$Var <- "Migratie"

View(Migratie_maand_n)

Inkomen_maand_n <- Long_n %>%
    group_by(Quintile_Inkomen, Maand) %>%
    summarise(Besmet= sum(Besmet),
              Totaal= sum(Aantal),
              Getest=sum(Getest),
              Positief_CoronIT= sum(Positief_CoronIT))
Inkomen_maand_n$Var <- "Inkomen"
  
Opleiding_maand_n <- Long_n %>%
    group_by(Opleidingsniveau, Maand) %>%
    summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Opleiding_maand_n$Var <- "Opleiding"

Bron_maand_n <- Long_n %>%
  group_by(Bron, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Bron_maand_n$Var <- "Bron"

Leeftijd_maand_n <- Long_n %>%
  group_by(Leeftijd_cats, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Leeftijd_maand_n$Var <- "Leeftijd"

Geslacht_maand_n <- Long_n %>%
  group_by(GBAGESLACHT, Maand) %>%
  summarise(Besmet= sum(Besmet),
           Totaal= sum(Aantal),
          Getest=sum(Getest),
          Positief_CoronIT= sum(Positief_CoronIT))
Geslacht_maand_n$Var <- "Geslacht"

HH_maand_n <- Long_n %>%
  group_by(Huishouden, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
HH_maand_n$Var <- "Huishouden"

Dichtheid_maand_n <- Long_n %>%
  group_by(Dichtheid, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Dichtheid_maand_n$Var <- "Dichtheid"

##=================== Zorgen dat de nieuwe sets koppelbaar worden =============##

library(dplyr)
Migratie_maand_n <- Migratie_maand_n %>%
    rename(Label= ETNGRP)
Inkomen_maand_n <- Inkomen_maand_n %>%
  rename(Label= Quintile_Inkomen)
Opleiding_maand_n <- Opleiding_maand_n %>%
  rename(Label= Opleidingsniveau)
Bron_maand_n <- Bron_maand_n %>%
  rename(Label= Bron)
Leeftijd_maand_n <- Leeftijd_maand_n %>%
  rename(Label= Leeftijd_cats)
Geslacht_maand_n <- Geslacht_maand_n %>%
  rename(Label= GBAGESLACHT)
HH_maand_n <- HH_maand_n %>%
  rename(Label= Huishouden)
Dichtheid_maand_n <- Dichtheid_maand_n %>%
  rename(Label= Dichtheid)

Groepsgroottes_totaal <- rbind(Migratie_maand_n, Inkomen_maand_n, Opleiding_maand_n,
                               Bron_maand_n, Leeftijd_maand_n, Geslacht_maand_n,
                               HH_maand_n, Dichtheid_maand_n)
View(Groepsgroottes_totaal)

Groepsgroottes_totaal$Inc <- (Groepsgroottes_totaal$Besmet/(Groepsgroottes_totaal$Totaal/100000))
Groepsgroottes_totaal$Inc <- round(Groepsgroottes_totaal$Inc, digits=0)

Groepsgroottes_totaal2 <- merge(Groepsgroottes_totaal, Labels_totaal, by=c("Var", "Sector"), all.x=TRUE)

library(writexl)
setwd("H:\\Resultaten\\1. Beschrijvende statistiek")
write_xlsx(Groepsgroottes_totaal, "Maandincidenties totaal.xlsx")
View(Groepsgroottes_werkenden$Inc)

##================================== Werkenden ========================================####

library(gtools)
library(dplyr)
Long_sub_n$Inkomen_pers <- as.factor(quantcut(Long_sub_n$SLNINGLD_mean, q=5))
levels(Long_sub_n$Inkomen_pers) <- c(1,2,3,4,5)

library(dplyr)
Sector_maand_n <- Long_sub_n %>%
  group_by(Sector, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Sector_maand_n$Var <- "Bedrijfssector"

Migratie_maand_n <- Long_sub_n %>%
  group_by(ETNGRP, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Migratie_maand_n$Var <- "Herkomst"

Inkomen_maand_n <- Long_sub_n %>%
  group_by(Inkomen_pers, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Inkomen_maand_n$Var <- "Inkomen"

Opleiding_maand_n <- Long_sub_n %>%
  group_by(Opleidingsniveau, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Opleiding_maand_n$Var <- "Opleiding"

Leeftijd_maand_n <- Long_sub_n %>%
  group_by(Leeftijd_cats, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Leeftijd_maand_n$Var <- "Leeftijd"

Geslacht_maand_n <- Long_sub_n %>%
  group_by(GBAGESLACHT, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Geslacht_maand_n$Var <- "Geslacht"

Contract_maand_n <- Long_sub_n %>%
  group_by(Contract_onbepaalde_tijd, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Contract_maand_n$Var <- "Contract"

Dienstverband_maand_n <- Long_sub_n %>%
  group_by(Voltijd_dienstverband, Maand) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(Getest),
            Positief_CoronIT= sum(Positief_CoronIT))
Dienstverband_maand_n$Var <- "Dienstverband"

##=================== Zorgen dat de nieuwe sets koppelbaar worden =============##

library(dplyr)
Sector_maand_n <- Sector_maand_n %>%
  rename(Label= Sector)
Migratie_maand_n <- Migratie_maand_n %>%
  rename(Label= ETNGRP)
Inkomen_maand_n <- Inkomen_maand_n %>%
  rename(Label= Inkomen_pers)
Opleiding_maand_n <- Opleiding_maand_n %>%
  rename(Label= Opleidingsniveau)
Leeftijd_maand_n <- Leeftijd_maand_n %>%
  rename(Label= Leeftijd_cats)
Geslacht_maand_n <- Geslacht_maand_n %>%
  rename(Label= GBAGESLACHT)
Dienstverband_maand_n <- Dienstverband_maand_n %>%
  rename(Label= Voltijd_dienstverband)
Contract_maand_n <- Contract_maand_n %>%
  rename(Label= Contract_onbepaalde_tijd)

library(labelled)
Dienstverband_maand_n$Label <- remove_var_label(Dienstverband_maand_n$Label)
Contract_maand_n$Label <- remove_var_label(Contract_maand_n$Label)
Inkomen_maand_n$Label <- remove_var_label(Inkomen_maand_n$Label)
Opleiding_maand_n$Label <- remove_var_label(Opleiding_maand_n$Label)
Geslacht_maand_n$Label <- remove_var_label(Geslacht_maand_n$Label)
Sector_maand_n$Label <- remove_var_label(Sector_maand_n$Label)
Leeftijd_maand_n$Label <- remove_var_label(Leeftijd_maand_n$Label)
Migratie_maand_n$Label <- remove_var_label(Migratie_maand_n$Label)

Dienstverband_maand_n$Label <- as.factor(Dienstverband_maand_n$Label)
Contract_maand_n$Label <- as.factor(Contract_maand_n$Label)
Inkomen_maand_n$Label <- as.factor(Inkomen_maand_n$Label)
Opleiding_maand_n$Label <- as.factor(Opleiding_maand_n$Label)
Geslacht_maand_n$Label <- as.factor(Geslacht_maand_n$Label)
Sector_maand_n$Label <- as.factor(Sector_maand_n$Label)
Leeftijd_maand_n$Label <- as.factor(Leeftijd_maand_n$Label)
Migratie_maand_n$Label <- as.factor(Migratie_maand_n$Label)

Groepsgroottes_werkenden <- rbind(Sector_maand_n, Migratie_maand_n, Inkomen_maand_n, 
                                  Opleiding_maand_n, Leeftijd_maand_n, Geslacht_maand_n,
                               Dienstverband_maand_n, Contract_maand_n)

View(Groepsgroottes_werkenden)
Groepsgroottes_werkenden$Inc <- (Groepsgroottes_werkenden$Besmet/(Groepsgroottes_werkenden$Totaal/100000))
Groepsgroottes_werkenden$Inc <- round(Groepsgroottes_werkenden$Inc, digits=0)
View(Groepsgroottes_werkenden)

#install.packages("writexl")
library(writexl)
setwd("H:\\Resultaten\\1. Beschrijvende statistiek")
write_xlsx(Groepsgroottes_werkenden, "Maandincidenties werkenden.xlsx")



