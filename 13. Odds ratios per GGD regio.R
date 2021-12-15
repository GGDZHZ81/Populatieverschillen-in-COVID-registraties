

##========================================================= Inlezen sets ====================================================##

library(haven)
library(readxl)

setwd("H:\\Datasets voor analyse")
Imp_full <- read_sav("H://Datasets voor analyse//210610_Imp1_new.sav")

Labels_totaal <- as.data.frame(read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Labels_totaal"))
Labels_subset <- as.data.frame(read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Labels_subset"))

Labels1 <- Labels_totaal[which(Labels_totaal$Model == 1),]
Labels2 <- Labels_totaal[which(Labels_totaal$Model <= 2),]
Labels3 <- Labels_totaal[which(Labels_totaal$Model <= 3),]
Labels3a <- Labels_totaal[which(Labels_totaal$Model <= 33),]

Labels4 <- Labels_subset[which(Labels_subset$Model == 4),]
Labels5 <- Labels_subset[which(Labels_subset$Model <= 5),]
Labels6 <- Labels_subset[which(Labels_subset$Model <= 6),]
Labels6a <- Labels_subset[which(Labels_subset$Model <= 66),]

Imp_full <- as.data.frame(Imp_full)

##========================== Aanmaak sets voor verschillende typen analyses============================##

Imp <- Imp_full[c("Imputation_","Quintile_Inkomen", "Opleidingsniveau",
                  "ETNGRP", "Bron", "Leeftijd", "GBAGESLACHT",
                  "bev_dich_wijk", "Huishouden","In_Osiris", "In_CoronIT", "GGD_Regio")]

Imp_sub_full <- Imp_full[c("Imputation_","Sector", "Opleidingsniveau",
                           "ETNGRP", "Leeftijd", "GBAGESLACHT", "Contract_onbepaalde_tijd", "Voltijd_dienstverband",
                           "In_CoronIT", "SLNINGLD_mean", "In_Osiris", "GGD_Regio")]

##=========== Zorgen dat alleen de werkenden worden geselecteerd ================================##
##================= Opleidingsniveau splitsen voor mensen onder en boven de 18===================##

Imp$Opleidingsniveau2 <- Imp$Opleidingsniveau
Imp$Opleidingsniveau[Imp$Opleidingsniveau2==1 & Imp$Leeftijd < 18] <- 0

Imp_sub_full$Sub <- 1
Imp_sub_full$Sub[is.na(Imp_sub_full$Sector)] <- 0
Imp_sub <- Imp_sub_full[which(Imp_sub_full$Sub==1 & Imp_sub_full$Leeftijd >= 18),]

View(Imp_full)
View(Imp_sub)

#=========================== Samenvoegen van categorieen ==========================================##
#========= Let op: Leeftijd in verschillende groepen voor totale bevolking en voor werkenden ======##

Imp$Leeftijd_cats <- Imp$Leeftijd
Imp$Leeftijd_cats[Imp$Leeftijd < 12] <- 1
Imp$Leeftijd_cats[Imp$Leeftijd >= 12 & Imp$Leeftijd < 18] <- 2
Imp$Leeftijd_cats[Imp$Leeftijd >= 18 & Imp$Leeftijd < 30] <- 3
Imp$Leeftijd_cats[Imp$Leeftijd >= 30 & Imp$Leeftijd < 45] <- 4
Imp$Leeftijd_cats[Imp$Leeftijd >= 45 & Imp$Leeftijd < 65] <- 5
Imp$Leeftijd_cats[Imp$Leeftijd >= 65] <- 6

Imp_sub$Leeftijd_cats <- Imp_sub$Leeftijd
Imp_sub$Leeftijd_cats[Imp_sub$Leeftijd < 30] <- 1
Imp_sub$Leeftijd_cats[Imp_sub$Leeftijd >= 30 & Imp_sub$Leeftijd < 40] <- 2
Imp_sub$Leeftijd_cats[Imp_sub$Leeftijd >= 40 & Imp_sub$Leeftijd < 50] <- 3
Imp_sub$Leeftijd_cats[Imp_sub$Leeftijd >= 50] <- 4

library(gtools)
library(dplyr)
Imp_sub$Inkomen_pers <- as.factor(quantcut(Imp_sub$SLNINGLD_mean, q=5))
Imp_sub$Quintile_Inkomen_pers <- Imp_sub$Inkomen_pers
levels(Imp_sub$Quintile_Inkomen_pers) <- c(1,2,3,4,5)

#================================= Dubbele check op missende waarden ==============================##

ftable(Imp$Quintile_Inkomen)
ftable(Imp$Opleidingsniveau)
ftable(Imp$ETNGRP)
ftable(Imp$Bron)
ftable(Imp$GBAGESLACHT)
ftable(Imp$Leeftijd_cats)
ftable(Imp$Huishouden)
ftable(Imp$In_CoronIT)

ftable(Imp_sub$Quintile_Inkomen_pers)
ftable(Imp_sub$Opleidingsniveau)
ftable(Imp_sub$ETNGRP)
ftable(Imp_sub$Sector)
ftable(Imp_sub$GBAGESLACHT)
ftable(Imp_sub$Leeftijd_cats)
ftable(Imp_sub$Contract_onbepaalde_tijd )
ftable(Imp_sub$Voltijd_dienstverband)
ftable(Imp_sub$In_CoronIT)

#==================== Zorgen dat categoriale variabelen als factor in de set staan ================= ##

Imp$Quintile_Inkomen <- as.factor(Imp$Quintile_Inkomen)
Imp$Opleidingsniveau <- as.factor(Imp$Opleidingsniveau)
Imp$ETNGRP <- as.factor(Imp$ETNGRP)
Imp$Bron <- as.factor(Imp$Bron)
Imp$Leeftijd_cats <- as.factor(Imp$Leeftijd_cats)
Imp$GBAGESLACHT <- as.factor(Imp$GBAGESLACHT)
#Imp$Dichtheid <- as.factor(Imp$Dichtheid)
Imp$Huishouden <- as.factor(Imp$Huishouden)
Imp$In_CoronIT <- as.factor(Imp$In_CoronIT)
Imp$In_Osiris <- as.factor(Imp$In_Osiris)
Imp$In_CoronIT <- as.factor(Imp$In_CoronIT)

Imp_sub$Sector <- as.factor(Imp_sub$Sector)
Imp_sub$Quintile_Inkomen_pers <- as.factor(Imp_sub$Quintile_Inkomen_pers)
Imp_sub$Opleidingsniveau <- as.factor(Imp_sub$Opleidingsniveau)
Imp_sub$ETNGRP <- as.factor(Imp_sub$ETNGRP)
Imp_sub$Leeftijd_cats <- as.factor(Imp_sub$Leeftijd_cats)
Imp_sub$GBAGESLACHT <- as.factor(Imp_sub$GBAGESLACHT)
Imp_sub$Contract_onbepaalde_tijd <- as.factor(Imp_sub$Contract_onbepaalde_tijd)
Imp_sub$Voltijd_dienstverband <- as.factor(Imp_sub$Voltijd_dienstverband)
Imp_sub$In_CoronIT <- as.factor(Imp_sub$In_CoronIT)
Imp_sub$In_Osiris <- as.factor(Imp_sub$In_Osiris)
Imp$In_CoronIT <- as.factor(Imp$In_CoronIT)

## ================================== Referentiewaarden kiezen  ============================##
##=================Voor factors met een referentie van nul is dit niet van toepassing=======##

Imp$Quintile_Inkomen <- relevel(Imp$Quintile_Inkomen, ref=3)
Imp$Opleidingsniveau <- relevel(Imp$Opleidingsniveau, ref=2)
Imp$Bron <- relevel(Imp$Bron, ref=1)
Imp$Leeftijd_cats <- relevel(Imp$Leeftijd_cats, ref= 3)
Imp$Huishouden <- relevel(Imp$Huishouden, ref= 2)

Imp_sub$Sector <- relevel(Imp_sub$Sector, ref=1)
Imp_sub$Quintile_Inkomen_pers <- relevel(Imp_sub$Quintile_Inkomen_pers, ref=3)
Imp_sub$Opleidingsniveau <- relevel(Imp_sub$Opleidingsniveau, ref=2)
Imp_sub$Leeftijd_cats <- relevel(Imp_sub$Leeftijd_cats, ref= 1)

#======================================== Aanmaak sets per maand =================================================##

Imp$Besmet <- Imp$In_Osiris
Imp_sub$Besmet <- Imp_sub$In_Osiris

ZHZ <- Imp[which(Imp$GGD_Regio==1),]
RR <- Imp[which(Imp$GGD_Regio==2),]
ZLD <- Imp[which(Imp$GGD_Regio==3),]

##============================ Bevolkingsdichtheid aanmaken per GGD regio =======================================##

library(gtools)

ZHZ$Dichtheid <- as.factor(quantcut(ZHZ$bev_dich_wijk, q=5))
RR$Dichtheid <- as.factor(quantcut(RR$bev_dich_wijk, q=5))
ZLD$Dichtheid <- as.factor(quantcut(ZLD$bev_dich_wijk, q=5))

levels(ZHZ$Dichtheid) <- c(1,2,3,4,5)
levels(RR$Dichtheid) <- c(1,2,3,4,5)
levels(ZLD$Dichtheid) <- c(1,2,3,4,5)

ZHZ$Dichtheid <- as.factor(ZHZ$Dichtheid)
RR$Dichtheid <- as.factor(RR$Dichtheid)
ZLD$Dichtheid <- as.factor(ZLD$Dichtheid)

ZHZ$Dichtheid <- relevel(ZHZ$Dichtheid, ref= 3)
RR$Dichtheid <- relevel(RR$Dichtheid, ref= 3)
ZLD$Dichtheid <- relevel(ZLD$Dichtheid, ref= 3)

##========================= Alleen werkenden selecteren ==========================###

ZHZ_sub <- Imp_sub[which(Imp_sub$GGD_Regio==1),]
RR_sub <- Imp_sub[which(Imp_sub$GGD_Regio==2),]
ZLD_sub <- Imp_sub[which(Imp_sub$GGD_Regio==3),]

##============================== Odds ratio's per GG regio voor model 3 (hele popluatie) =============================================###

library(lme4)
Model3_RR  <- glm(data=RR, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                    GBAGESLACHT + Huishouden + Dichtheid, family= "binomial")
Model3_ZHZ  <- glm(data=ZHZ, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                     GBAGESLACHT + Huishouden + Dichtheid, family= "binomial")
Model3_ZLD  <- glm(data=ZLD, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                     GBAGESLACHT + Huishouden + Dichtheid, family= "binomial")

OR_RR <- as.data.frame(summary(Model3_RR)$coefficients)
OR_ZHZ <- as.data.frame(summary(Model3_ZHZ)$coefficients)
OR_ZLD <- as.data.frame(summary(Model3_ZLD)$coefficients)

OR_RR$Categorie <- rownames(OR_RR)
OR_ZHZ$Categorie <- rownames(OR_ZHZ)
OR_ZLD$Categorie <- rownames(OR_ZLD)

OR_RR$GGDRegio <- "Rotterdam Rijnmond"
OR_ZHZ$GGDRegio <- "Zuid- Holland Zuid"
OR_ZLD$GGDRegio <- "Zeeland"

OR_per_GGDRegio <- rbind(OR_RR, OR_ZHZ, OR_ZLD)
View(OR_per_GGDRegio)

##============================= Aanmaken van Odds ratio's en betrouwbaarheidsintevallen =======================##

OR_per_GGDRegio$OR <- exp(OR_per_GGDRegio$Estimate)
OR_per_GGDRegio$LL <- exp(OR_per_GGDRegio$Estimate - 2*OR_per_GGDRegio$`Std. Error`)
OR_per_GGDRegio$UL <- exp(OR_per_GGDRegio$Estimate + 2*OR_per_GGDRegio$`Std. Error`)

OR_per_GGDRegio$OR  <- round(OR_per_GGDRegio$OR , digits=2)
OR_per_GGDRegio$LL  <- round(OR_per_GGDRegio$LL , digits=2)
OR_per_GGDRegio$UL  <- round(OR_per_GGDRegio$UL , digits=2)

OR_per_GGDRegio3 <- merge(OR_per_GGDRegio, Labels_totaal, by=c("Categorie"), all=TRUE)

OR_per_GGDRegio3$Estimate <- NULL
OR_per_GGDRegio3$`Std. Error` <- NULL
OR_per_GGDRegio3$`z value` <- NULL
OR_per_GGDRegio3$`Pr(>|z|)` <- NULL

OR_per_GGDRegio3 <- OR_per_GGDRegio3[order(OR_per_GGDRegio3$Volgorde),]
View(OR_per_GGDRegio3)

library(writexl)
setwd("H:\\Resultaten\\3. OddsRatios")
write_xlsx(OR_per_GGDRegio3, "210616_ORs per GGD regio model 3.xlsx")

##============================== Odds ratio's per GG regio voor model 6 (werkenden) =============================================###

library(lme4)
Model6_RR  <- glm(data=RR_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen_pers + Opleidingsniveau + Leeftijd_cats + 
                    GBAGESLACHT + Contract_onbepaalde_tijd + Voltijd_dienstverband , family= "binomial")
Model6_ZHZ  <- glm(data=ZHZ_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen_pers + Opleidingsniveau + Leeftijd_cats + 
                     GBAGESLACHT + Contract_onbepaalde_tijd + Voltijd_dienstverband , family= "binomial")
Model6_ZLD  <- glm(data=ZLD_sub, Besmet ~ Sector + Sector + ETNGRP + Quintile_Inkomen_pers + Opleidingsniveau + Leeftijd_cats + 
                     GBAGESLACHT + Contract_onbepaalde_tijd + Voltijd_dienstverband , family= "binomial")

OR_RR <- as.data.frame(summary(Model6_RR)$coefficients)
OR_ZHZ <- as.data.frame(summary(Model6_ZHZ)$coefficients)
OR_ZLD <- as.data.frame(summary(Model6_ZLD)$coefficients)

OR_RR$Categorie <- rownames(OR_RR)
OR_ZHZ$Categorie <- rownames(OR_ZHZ)
OR_ZLD$Categorie <- rownames(OR_ZLD)

OR_RR$GGDRegio <- "Rotterdam Rijnmond"
OR_ZHZ$GGDRegio <- "Zuid- Holland Zuid"
OR_ZLD$GGDRegio <- "Zeeland"

OR_per_GGDRegio <- rbind(OR_RR, OR_ZHZ, OR_ZLD)
View(OR_per_GGDRegio)

##=================== Aanmaken van Odds ratio's en betrouwbaarheidsintervallen ===================##

OR_per_GGDRegio$OR <- exp(OR_per_GGDRegio$Estimate)
OR_per_GGDRegio$LL <- exp(OR_per_GGDRegio$Estimate - 2*OR_per_GGDRegio$`Std. Error`)
OR_per_GGDRegio$UL <- exp(OR_per_GGDRegio$Estimate + 2*OR_per_GGDRegio$`Std. Error`)

OR_per_GGDRegio$OR  <- round(OR_per_GGDRegio$OR , digits=2)
OR_per_GGDRegio$LL  <- round(OR_per_GGDRegio$LL , digits=2)
OR_per_GGDRegio$UL  <- round(OR_per_GGDRegio$UL , digits=2)

OR_per_GGDRegio$Estimate <- NULL
OR_per_GGDRegio$`Std. Error` <- NULL
OR_per_GGDRegio$`z value` <- NULL
OR_per_GGDRegio$`Pr(>|z|)` <- NULL

OR_per_GGDRegio6 <- merge(OR_per_GGDRegio, Labels_subset, by=c("Categorie"), all=TRUE)
OR_per_GGDRegio6 <- OR_per_GGDRegio6[order(OR_per_GGDRegio6$Volgorde),]

library(writexl)
setwd("H:\\Resultaten\\3. OddsRatios")
write_xlsx(OR_per_GGDRegio6, "210616_ORs per GGD regio model 6.xlsx")

##=============== Vergelijking makkelijker bekijken =============###

library(tidyr)
GGDRegio3 <- OR_per_GGDRegio3[c("Volgorde", "Label", "GGDRegio", "OR")]
GGDRegio3_wide <- spread(GGDRegio3, GGDRegio, OR)
#View(GGDRegio3_wide)

GGDRegio6 <- OR_per_GGDRegio6[c("Volgorde", "Label", "GGDRegio", "OR")]
GGDRegio6_wide <- spread(GGDRegio6, GGDRegio, OR)
#View(GGDRegio6_wide)

library(writexl)
setwd("H:\\Resultaten\\3. OddsRatios")
write_xlsx(GGDRegio3_wide, "210616_Regionale vergelijking model 3.xlsx")
write_xlsx(GGDRegio6_wide, "210616_Regionale vergelijking model 6.xlsx")

