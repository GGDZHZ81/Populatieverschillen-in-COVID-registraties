
##====================================== Groepsgroottes per categorie per maand ======================================##

library(haven)
library(readxl)

setwd("H:\\Datasets voor analyse")
Imp1 <- read_sav("210610_Imp1_new.sav")
Labels_totaal <- read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Baseline_totaal")
Labels_werkend <- read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Baseline_werkend")

Labels_t_Ink <- Labels_totaal[which(Labels_totaal$Var=="Inkomen"),]
Labels_t_Opl <- Labels_totaal[which(Labels_totaal$Var=="Opleiding"),]
Labels_t_Mig <- Labels_totaal[which(Labels_totaal$Var=="Herkomst"),]
Labels_t_Bron <- Labels_totaal[which(Labels_totaal$Var=="Bron"),]
Labels_t_Age <- Labels_totaal[which(Labels_totaal$Var=="Leeftijd"),]
Labels_t_Gesl <- Labels_totaal[which(Labels_totaal$Var=="Geslacht"),]
Labels_t_HH <- Labels_totaal[which(Labels_totaal$Var=="HHSamenstelling"),]
Labels_t_Dicht <- Labels_totaal[which(Labels_totaal$Var=="Bevolkingsdichtheid"),]

##============================================== Aanmaak subsets =====================================================###

Imp1$Werkend <- Imp1$Sector
Imp1$Besmet <- Imp1$In_Osiris
Imp1$Besmet[which(Imp1$In_Osiris==0 & Imp1$Pos_CoronIT==1)] <- 1

Imp1$Opleidingsniveau[Imp1$Leeftijd <18] <- 0
ftable(Imp1$Opleidingsniveau)

Imp1$Werkend[is.na(Imp1$Sector)] <- 0
Imp1$Werkend[Imp1$Sector!=0 & Imp1$Leeftijd >=18] <- 1

Imp1_sub <- Imp1[which(Imp1$Werkend==1 & Imp1$Leeftijd > 18),]

##========================================= Aanmaak resterende categorieën ============================================###

Imp1$Leeftijd_cats <- Imp1$Leeftijd
Imp1$Leeftijd_cats[Imp1$Leeftijd < 12] <- 1
Imp1$Leeftijd_cats[Imp1$Leeftijd >= 12 & Imp1$Leeftijd < 18] <- 2
Imp1$Leeftijd_cats[Imp1$Leeftijd >= 18 & Imp1$Leeftijd < 30] <- 3
Imp1$Leeftijd_cats[Imp1$Leeftijd >= 30 & Imp1$Leeftijd < 45] <- 4
Imp1$Leeftijd_cats[Imp1$Leeftijd >= 45 & Imp1$Leeftijd < 65] <- 5
Imp1$Leeftijd_cats[Imp1$Leeftijd >= 65] <- 6

Imp1_sub$Leeftijd_cats <- Imp1_sub$Leeftijd
Imp1_sub$Leeftijd_cats[Imp1_sub$Leeftijd < 30] <- 1
Imp1_sub$Leeftijd_cats[Imp1_sub$Leeftijd >= 30 & Imp1_sub$Leeftijd < 40] <- 2
Imp1_sub$Leeftijd_cats[Imp1_sub$Leeftijd >= 40 & Imp1_sub$Leeftijd < 50] <- 3
Imp1_sub$Leeftijd_cats[Imp1_sub$Leeftijd >= 50] <- 4

Imp1$Dichtheid <- Imp1$bev_dich_wijk
Imp1$Dichtheid[Imp1$bev_dich_wijk <= 1082] <-1
Imp1$Dichtheid[Imp1$bev_dich_wijk > 1082 & Imp1$bev_dich_wijk <= 3756] <-2
Imp1$Dichtheid[Imp1$bev_dich_wijk > 3756 & Imp1$bev_dich_wijk <= 5410] <-3
Imp1$Dichtheid[Imp1$bev_dich_wijk > 5410 & Imp1$bev_dich_wijk <= 6947] <-4
Imp1$Dichtheid[Imp1$bev_dich_wijk > 6947] <-5

Selectie_totaal <- c("Besmet","ETNGRP","Quintile_Inkomen","Opleidingsniveau", 
                     "Bron","Leeftijd_cats","GBAGESLACHT","Huishouden","Dichtheid", 
                     "GGD_Regio", "In_CoronIT", "Pos_CoronIT")
Selectie_werkend <- c("Besmet", "Sector", "ETNGRP","Quintile_Inkomen","Opleidingsniveau", 
                      "Leeftijd_cats","GBAGESLACHT","Contract_onbepaalde_tijd", 
                      "Voltijd_dienstverband", "SLNINGLD_mean", "Leeftijd", 
                      "In_CoronIT", "Pos_CoronIT")
  
Imp1_n <- Imp1[Selectie_totaal]
Imp1_sub_n <- Imp1_sub[Selectie_werkend]

View(Imp1_n)

Imp1_n$Aantal <-1
Imp1_sub_n$Aantal <-1

##======================== Aanmaak aantallen besmet en totaal per determinant (per categorie) =========================##
##======================================= Hele populatie ==============================================================##

library(dplyr)
Migratie_n <- Imp1_n %>%
    group_by(ETNGRP) %>%
    summarise(Besmet= sum(Besmet),
             Totaal= sum(Aantal),
             Getest=sum(In_CoronIT),
             Pos_CoronIT= sum(Pos_CoronIT))
Migratie_n <- Migratie_n %>%
  rename(Label= ETNGRP)
Migratie_t <- merge (Migratie_n, Labels_t_Mig, by= c("Label"), all=TRUE)

Inkomen_n <- Imp1_n %>%
    group_by(Quintile_Inkomen) %>%
    summarise(Besmet= sum(Besmet),
              Totaal= sum(Aantal),
              Getest=sum(In_CoronIT),
              Pos_CoronIT= sum(Pos_CoronIT))
Inkomen_n <- Inkomen_n %>%
  rename(Label= Quintile_Inkomen)
Inkomen_t <- merge (Inkomen_n, Labels_t_Ink, by= c("Label"), all=TRUE)

Opleiding_n <- Imp1_n %>%
    group_by(Opleidingsniveau) %>%
    summarise(Besmet= sum(Besmet),
             Totaal= sum(Aantal),
             Getest=sum(In_CoronIT),
             Pos_CoronIT= sum(Pos_CoronIT))
Opleiding_n <- Opleiding_n %>%
  rename(Label= Opleidingsniveau)
Opleiding_t <- merge (Opleiding_n, Labels_t_Opl, by= c("Label"), all=TRUE)

Bron_n <- Imp1_n %>%
  group_by(Bron) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Bron_n <- Bron_n %>%
  rename(Label= Bron)
Bron_t <- merge (Bron_n, Labels_t_Bron, by= c("Label"), all=TRUE)

Leeftijd_n <- Imp1_n %>%
  group_by(Leeftijd_cats) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Leeftijd_n <- Leeftijd_n %>%
  rename(Label= Leeftijd_cats)
Leeftijd_t <- merge (Leeftijd_n, Labels_t_Age, by= c("Label"), all=TRUE)

Geslacht_n <- Imp1_n %>%
  group_by(GBAGESLACHT) %>%
  summarise(Besmet= sum(Besmet),
           Totaal= sum(Aantal),
           Getest=sum(In_CoronIT),
           Pos_CoronIT= sum(Pos_CoronIT))
Geslacht_n <- Geslacht_n %>%
  rename(Label= GBAGESLACHT)
Geslacht_t <- merge (Geslacht_n, Labels_t_Gesl, by= c("Label"), all=TRUE)

HH_n <- Imp1_n %>%
  group_by(Huishouden) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
HH_n <- HH_n %>%
  rename(Label= Huishouden)
HH_t <- merge (HH_n, Labels_t_HH, by= c("Label"), all=TRUE)

Dichtheid_n <- Imp1_n %>%
  group_by(Dichtheid) %>%
  summarise(Besmet= sum(Besmet),
           Totaal= sum(Aantal),
           Getest=sum(In_CoronIT),
           Pos_CoronIT= sum(Pos_CoronIT))
Dichtheid_n <- Dichtheid_n %>%
  rename(Label= Dichtheid)
Dicht_t <- merge (Dichtheid_n, Labels_t_Dicht, by= c("Label"), all=TRUE)

##=========================================== Koppelen tot een complete tabel ===========================================##

Totaal_inc <- rbind(Migratie_t, Inkomen_t, Opleiding_t, Bron_t, Leeftijd_t, Geslacht_t, HH_t, Dicht_t)
View(Totaal_inc)
Totaal_inc <- Totaal_inc[order(Totaal_inc$Volgorde),]
Totaal_inc$Inc <- Totaal_inc$Besmet/ (Totaal_inc$Totaal/ 100000)
Totaal_inc$Inc <- round(Totaal_inc$Inc, digits=0)

Totaal_inc <- Totaal_inc[c("Volgorde", "Var", "Label", "Label_text", "Totaal", "Getest", "Besmet", "Pos_CoronIT","Inc")]

library(writexl)
setwd("H:\\Resultaten\\1. Beschrijvende statistiek")
write_xlsx(Totaal_inc, "Incidentie per determinant totale periode.xlsx")

##======================================= Werkenden ==============================================================##

Labels_w_Sec <- Labels_werkend[which(Labels_werkend$Var=="Bedrijfssector"),]
Labels_w_Ink <- Labels_werkend[which(Labels_werkend$Var=="Inkomen"),]
Labels_w_Opl <- Labels_werkend[which(Labels_werkend$Var=="Opleiding"),]
Labels_w_Mig <- Labels_werkend[which(Labels_werkend$Var=="Herkomst"),]
Labels_w_Age <- Labels_werkend[which(Labels_werkend$Var=="Leeftijd"),]
Labels_w_Gesl <- Labels_werkend[which(Labels_werkend$Var=="Geslacht"),]
Labels_w_Dienst <- Labels_werkend[which(Labels_werkend$Var=="Dienstverband"),]
Labels_w_Contract <- Labels_werkend[which(Labels_werkend$Var=="Contract"),]

library(gtools)
library(dplyr)
Imp1_sub_n$Inkomen_pers <- as.factor(quantcut(Imp1_sub_n$SLNINGLD_mean, q=5))
levels(Imp1_sub_n$Inkomen_pers) <- c(1,2,3,4,5)

library(dplyr)
Sector_n <- Imp1_sub_n %>%
  group_by(Sector) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Sector_n <- Sector_n %>%
  rename(Label= Sector)
Sec_w <- merge (Sector_n, Labels_w_Sec, by= c("Label"), all=TRUE)

Migratie_n <- Imp1_sub_n %>%
  group_by(ETNGRP) %>%
  summarise(Besmet= sum(Besmet),
           Totaal= sum(Aantal),
           Getest=sum(In_CoronIT),
           Pos_CoronIT= sum(Pos_CoronIT))
Migratie_n <- Migratie_n %>%
  rename(Label= ETNGRP)
Mig_w <- merge (Migratie_n, Labels_w_Mig, by= c("Label"), all=TRUE)

Inkomen_n <- Imp1_sub_n %>%
  group_by(Inkomen_pers) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Inkomen_n <- Inkomen_n %>%
  rename(Label= Inkomen_pers)
Ink_w <- merge (Inkomen_n, Labels_w_Ink, by= c("Label"), all=TRUE)

Opleiding_n <- Imp1_sub_n %>%
  group_by(Opleidingsniveau) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Opleiding_n <- Opleiding_n %>%
  rename(Label= Opleidingsniveau)
Opl_w <- merge (Opleiding_n, Labels_w_Opl, by= c("Label"), all=TRUE)

Leeftijd_n <- Imp1_sub_n %>%
  group_by(Leeftijd_cats) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Leeftijd_n <- Leeftijd_n %>%
  rename(Label= Leeftijd_cats)
Leeftijd_w <- merge (Leeftijd_n, Labels_w_Age, by= c("Label"), all=TRUE)

Geslacht_n <- Imp1_sub_n %>%
  group_by(GBAGESLACHT) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Geslacht_n <- Geslacht_n %>%
  rename(Label= GBAGESLACHT)
Gesl_w <- merge (Geslacht_n, Labels_w_Gesl, by= c("Label"), all=TRUE)

Contract_n <- Imp1_sub_n %>%
  group_by(Contract_onbepaalde_tijd) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Contract_n <- Contract_n %>%
  rename(Label= Contract_onbepaalde_tijd)
Con_w <- merge (Contract_n, Labels_w_Contract, by= c("Label"), all=TRUE)

Dienstverband_n <- Imp1_sub_n %>%
  group_by(Voltijd_dienstverband) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))
Dienstverband_n <- Dienstverband_n %>%
  rename(Label= Voltijd_dienstverband)
Dienst_w <- merge (Dienstverband_n, Labels_w_Dienst, by= c("Label"), all=TRUE)

##=================== Sets aan elkaar koppelen tot een complete set  =============##

Mig_w$Label <- as.factor(Mig_w$Label)
Sec_w$Label <- as.factor(Sec_w$Label)
Werkend_inc <- rbind(Sec_w, Ink_w, Opl_w, Leeftijd_w, Gesl_w, Con_w, Dienst_w, Mig_w)
View(Werkend_inc)

Werkend_inc <- Werkend_inc[order(Werkend_inc$Volgorde),]
Werkend_inc$Inc <- Werkend_inc$Besmet/ (Werkend_inc$Totaal/ 100000)
Werkend_inc$Inc <- round(Werkend_inc$Inc, digits=0)

Werkend_inc <- Werkend_inc[c("Volgorde", "Var", "Label", "Label_text", "Totaal", "Getest", "Besmet", "Pos_CoronIT","Inc")]

library(writexl)
setwd("H:\\Resultaten\\1. Beschrijvende statistiek")
write_xlsx(Werkend_inc, "Incidentie per determinant totale periode werkenden.xlsx")

##====================== Aantallen voor de hele periode per GGD regio =============================##

GGD_Regio_n <- Imp1_n %>%
  group_by(GGD_Regio) %>%
  summarise(Besmet= sum(Besmet),
            Totaal= sum(Aantal),
            Getest=sum(In_CoronIT),
            Pos_CoronIT= sum(Pos_CoronIT))

View(GGD_Regio_n)

GGD_Regio_n$Inc <- GGD_Regio_n$Besmet/(GGD_Regio_n$Totaal/ 100000)
GGD_Regio_n$Inc <- round(GGD_Regio_n$Inc, digits=0)

library(writexl)
setwd("H:\\Resultaten\\1. Beschrijvende statistiek")
write_xlsx(GGD_Regio_n , "Prevalentie per GGD regio totale periode.xlsx")


