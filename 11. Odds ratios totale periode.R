
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
                  "bev_dich_wijk", "Huishouden","In_Osiris", "In_CoronIT")]

Imp_sub_full <- Imp_full[c("Imputation_","Sector", "Opleidingsniveau",
                     "ETNGRP", "Leeftijd", "GBAGESLACHT", "Contract_onbepaalde_tijd", "Voltijd_dienstverband",
                     "In_CoronIT", "SLNINGLD_mean", "In_Osiris")]

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

Imp$Dichtheid <- Imp$bev_dich_wijk
Imp$Dichtheid[Imp$bev_dich_wijk <= 1082] <-1
Imp$Dichtheid[Imp$bev_dich_wijk > 1082 & Imp$bev_dich_wijk <= 3756] <-2
Imp$Dichtheid[Imp$bev_dich_wijk > 3756 & Imp$bev_dich_wijk <= 5410] <-3
Imp$Dichtheid[Imp$bev_dich_wijk > 5410 & Imp$bev_dich_wijk <= 6947] <-4
Imp$Dichtheid[Imp$bev_dich_wijk > 6947] <-5

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
ftable(Imp$Dichtheid)
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
Imp$Dichtheid <- as.factor(Imp$Dichtheid)
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
Imp$Dichtheid <- relevel(Imp$Dichtheid, ref= 3)

Imp_sub$Sector <- relevel(Imp_sub$Sector, ref=1)
Imp_sub$Quintile_Inkomen_pers <- relevel(Imp_sub$Quintile_Inkomen_pers, ref=3)
Imp_sub$Opleidingsniveau <- relevel(Imp_sub$Opleidingsniveau, ref=2)
Imp_sub$Leeftijd_cats <- relevel(Imp_sub$Leeftijd_cats, ref= 1)

##============================== Regressiemodellen bouwen ==========================================##
##====================== Univariate modellen met besmetting als uitkomstmaat =======================##

## Totale set 
library(lme4)

Inkomen <- glm(data= Imp, In_Osiris ~ Quintile_Inkomen, family=binomial())
Opleiding <- glm(data= Imp,In_Osiris ~ Opleidingsniveau, family=binomial())
Migratie <- glm(data= Imp,In_Osiris ~ ETNGRP, family=binomial())
Bron <- glm(data= Imp,In_Osiris ~ Bron, family=binomial())
Geslacht <- glm(data= Imp,In_Osiris ~ GBAGESLACHT, family=binomial())
Leeftijd <- glm(data= Imp,In_Osiris ~ Leeftijd_cats, family=binomial())
HH_Samenstelling <- glm(data= Imp,In_Osiris ~ Huishouden, family=binomial())
Dichtheid <- glm(data= Imp,In_Osiris ~ Dichtheid, family=binomial())

## Subset werkenden

library(lme4)
Sector_sub <- glm(data= Imp_sub, In_Osiris ~ Sector, family=binomial())
Inkomen_pers_sub <- glm(data= Imp_sub, In_Osiris ~ Quintile_Inkomen_pers, family=binomial())
Opleiding_sub <- glm (data= Imp_sub,In_Osiris ~ Opleidingsniveau, family=binomial())
Migratie_sub <- glm(data= Imp_sub,In_Osiris ~ ETNGRP, family=binomial())
Geslacht_sub <- glm(data= Imp_sub,In_Osiris ~ GBAGESLACHT, family=binomial())
Leeftijd_sub <- glm(data= Imp_sub,In_Osiris ~ Leeftijd_cats, family=binomial())
Voltijd_sub <- glm(data= Imp_sub, In_Osiris ~ Voltijd_dienstverband, family=binomial())
Vast_sub <- glm(data= Imp_sub, In_Osiris ~ Contract_onbepaalde_tijd, family=binomial())

##========================== Multivariate modellen met besmettingen als uitkomstmaat ======================##

fit1 <- glm(data= Imp, In_Osiris ~ Quintile_Inkomen + Opleidingsniveau + 
                         ETNGRP + Bron, family=binomial)
fit2 <- glm(data= Imp, In_Osiris ~ Quintile_Inkomen + Opleidingsniveau + 
                         ETNGRP + Bron + GBAGESLACHT +
                         Leeftijd_cats, family=binomial())
fit3 <- glm(data= Imp, In_Osiris ~ Quintile_Inkomen + Opleidingsniveau + ETNGRP + Bron + GBAGESLACHT +
                         Leeftijd_cats + Dichtheid + Huishouden, family=binomial())
fit3a <- glm(data= Imp, In_Osiris ~ Quintile_Inkomen + Opleidingsniveau + ETNGRP + Bron + GBAGESLACHT +
              Leeftijd_cats + Dichtheid + Huishouden + In_CoronIT, family=binomial())

fit4 <- glm(data= Imp_sub, In_Osiris ~ Sector, family=binomial())
fit5 <- glm(data= Imp_sub, In_Osiris ~ Sector + Quintile_Inkomen_pers +
                          Opleidingsniveau + ETNGRP + GBAGESLACHT +
                          Leeftijd_cats, family=binomial())
fit6 <- glm(data= Imp_sub, In_Osiris ~ Sector + Quintile_Inkomen_pers +
              Opleidingsniveau + ETNGRP + GBAGESLACHT +
              Leeftijd_cats + Voltijd_dienstverband + Contract_onbepaalde_tijd, 
            family=binomial())
fit6a <- glm(data= Imp_sub, In_Osiris ~ Sector + Quintile_Inkomen_pers +
                          Opleidingsniveau + ETNGRP + GBAGESLACHT +
                          Leeftijd_cats + Voltijd_dienstverband + Contract_onbepaalde_tijd + In_CoronIT, 
                        family=binomial())

##=============================== Resultaten regressiemodellen omzetten in tabelvorm ============================##    

Ink <- as.data.frame(summary(Inkomen)$coefficients)
Opl <- as.data.frame(summary(Opleiding)$coefficients)
Mig <- as.data.frame(summary(Migratie)$coefficients)
Bron <- as.data.frame(summary(Bron)$coefficients)
Gesl <- as.data.frame(summary(Geslacht)$coefficients)
Age <- as.data.frame(summary(Leeftijd)$coefficients)
HH <- as.data.frame(summary(HH_Samenstelling)$coefficients)
Dicht <- as.data.frame(summary(Dichtheid)$coefficients)

Sec_sub <- as.data.frame(summary(Sector_sub)$coefficients)
Ink_sub <- as.data.frame(summary(Inkomen_pers_sub)$coefficients)
Ink_pers <- as.data.frame(summary(Inkomen_pers_sub)$coefficients)
Opl_sub <- as.data.frame(summary(Opleiding_sub)$coefficients)
Mig_sub <- as.data.frame(summary(Migratie_sub)$coefficients)
Gesl_sub <- as.data.frame(summary(Geslacht_sub)$coefficients)
Age_sub <- as.data.frame(summary(Leeftijd_sub)$coefficients)
Vol_sub <- as.data.frame(summary(Voltijd_sub)$coefficients)
Vas_sub <- as.data.frame(summary(Vast_sub)$coefficients)

##===================== Bovenstaande stukjes tabel aan elkaar plakken ==============================###

Univar_totaal <- rbind(Ink, Opl, Mig, Bron, Gesl, Age, HH, Dicht)
Univar_sub <- rbind(Sec_sub, Ink_sub, Opl_sub, Mig_sub, Gesl_sub, Age_sub, Vol_sub, Vas_sub)

##================= Resultaten van multivariate modellen omzetten in tabelvorm=====================###

Tabel1 <- as.data.frame(summary(fit1)$coefficients)
Tabel2 <- as.data.frame(summary(fit2)$coefficients)
Tabel3 <- as.data.frame(summary(fit3)$coefficients)
Tabel3a <- as.data.frame(summary(fit3a)$coefficients)

Tabel4 <- as.data.frame(summary(fit4)$coefficients)
Tabel5 <- as.data.frame(summary(fit5)$coefficients)
Tabel6 <- as.data.frame(summary(fit6)$coefficients)
Tabel6a <- as.data.frame(summary(fit6a)$coefficients)

###========================== Berekenen ORs en betrouwbaarheidsintervallen ================================##

Tabel1$OR1 <- exp(Tabel1$Estimate)
Tabel1$LL1 <- exp(Tabel1$Estimate - 1.96* Tabel1$`Std. Error`)
Tabel1$UL1 <- exp(Tabel1$Estimate + 1.96* Tabel1$`Std. Error`)

Tabel2$OR2 <- exp(Tabel2$Estimate)
Tabel2$LL2 <- exp(Tabel2$Estimate - 1.96* Tabel2$`Std. Error`)
Tabel2$UL2 <- exp(Tabel2$Estimate + 1.96* Tabel2$`Std. Error`)

Tabel3$OR3 <- exp(Tabel3$Estimate)
Tabel3$LL3 <- exp(Tabel3$Estimate - 1.96* Tabel3$`Std. Error`)
Tabel3$UL3 <- exp(Tabel3$Estimate + 1.96* Tabel3$`Std. Error`)

Tabel3a$OR3a <- exp(Tabel3a$Estimate)
Tabel3a$LL3a <- exp(Tabel3a$Estimate - 1.96* Tabel3a$`Std. Error`)
Tabel3a$UL3a <- exp(Tabel3a$Estimate + 1.96* Tabel3a$`Std. Error`)

Univar_totaal$ORUnivar <- exp(Univar_totaal$Estimate)
Univar_totaal$LLUnivar <- exp(Univar_totaal$Estimate - 1.96* Univar_totaal$`Std. Error`)
Univar_totaal$ULUnivar <- exp(Univar_totaal$Estimate + 1.96* Univar_totaal$`Std. Error`)

##================== Alleen werkenden =================##

Tabel4$OR4 <- exp(Tabel4$Estimate)
Tabel4$LL4 <- exp(Tabel4$Estimate - 1.96* Tabel4$`Std. Error`)
Tabel4$UL4 <- exp(Tabel4$Estimate + 1.96* Tabel4$`Std. Error`)

Tabel5$OR5 <- exp(Tabel5$Estimate)
Tabel5$LL5 <- exp(Tabel5$Estimate - 1.96* Tabel5$`Std. Error`)
Tabel5$UL5 <- exp(Tabel5$Estimate + 1.96* Tabel5$`Std. Error`)

Tabel6$OR6 <- exp(Tabel6$Estimate)
Tabel6$LL6 <- exp(Tabel6$Estimate - 1.96* Tabel6$`Std. Error`)
Tabel6$UL6 <- exp(Tabel6$Estimate + 1.96* Tabel6$`Std. Error`)

Tabel6a$OR6a <- exp(Tabel6a$Estimate)
Tabel6a$LL6a <- exp(Tabel6a$Estimate - 1.96* Tabel6a$`Std. Error`)
Tabel6a$UL6a <- exp(Tabel6a$Estimate + 1.96* Tabel6a$`Std. Error`)

Univar_sub$OR_Uni_sub <- exp(Univar_sub$Estimate)
Univar_sub$LL_Uni_sub <- exp(Univar_sub$Estimate - 1.96* Univar_sub$`Std. Error`)
Univar_sub$UL_Uni_sub <- exp(Univar_sub$Estimate + 1.96* Univar_sub$`Std. Error`)

##============================ Leesbaar maken van tabellen ===============================###

Tabel1$Categorie <- rownames(Tabel1)
Tabel2$Categorie <- rownames(Tabel2)
Tabel3$Categorie <- rownames(Tabel3)
Tabel3a$Categorie <- rownames(Tabel3a)
Univar_totaal$Categorie <- rownames(Univar_totaal)

Tabel4$Categorie <- rownames(Tabel4)
Tabel5$Categorie <- rownames(Tabel5)
Tabel6$Categorie <- rownames(Tabel6)
Tabel6a$Categorie <- rownames(Tabel6a)
Univar_sub$Categorie <- rownames(Univar_sub)

##======================== Verwijderen van onnodige informatie ===============================##

Tabel1$Estimate <- NULL
Tabel1$`Std. Error` <- NULL
Tabel1$`z value`   <- NULL
Tabel1$`Pr(>|z|)` <- NULL

Tabel2$Estimate <- NULL
Tabel2$`Std. Error` <- NULL
Tabel2$`z value`   <- NULL
Tabel2$`Pr(>|z|)` <- NULL

Tabel3$Estimate <- NULL
Tabel3$`Std. Error` <- NULL
Tabel3$`z value`   <- NULL
Tabel3$`Pr(>|z|)` <- NULL

Tabel3a$Estimate <- NULL
Tabel3a$`Std. Error` <- NULL
Tabel3a$`z value`   <- NULL
Tabel3a$`Pr(>|z|)` <- NULL

Univar_totaal$Estimate <- NULL
Univar_totaal$`Std. Error` <- NULL
Univar_totaal$`z value` <- NULL
Univar_totaal$`Pr(>|z|)` <- NULL

Tabel4$Estimate <- NULL
Tabel4$`Std. Error` <- NULL
Tabel4$`z value`   <- NULL
Tabel4$`Pr(>|z|)` <- NULL

Tabel5$Estimate <- NULL
Tabel5$`Std. Error` <- NULL
Tabel5$`z value`   <- NULL
Tabel5$`Pr(>|z|)` <- NULL

Tabel6$Estimate <- NULL
Tabel6$`Std. Error` <- NULL
Tabel6$`z value`   <- NULL
Tabel6$`Pr(>|z|)` <- NULL

Tabel6a$Estimate <- NULL
Tabel6a$`Std. Error` <- NULL
Tabel6a$`z value`   <- NULL
Tabel6a$`Pr(>|z|)` <- NULL

Univar_sub$Estimate <- NULL
Univar_sub$`Std. Error` <- NULL
Univar_sub$`z value` <- NULL
Univar_sub$`Pr(>|z|)` <- NULL

##==================== Alles afronden op 2 decimalen =======================##

Tabel1$OR1 <- round(Tabel1$OR1, digits=2)
Tabel1$LL1 <- round(Tabel1$LL1, digits=2)
Tabel1$UL1 <- round(Tabel1$UL1, digits=2)

Tabel2$OR2 <- round(Tabel2$OR2, digits=2)
Tabel2$LL2 <- round(Tabel2$LL2, digits=2)
Tabel2$UL2 <- round(Tabel2$UL2, digits=2)

Tabel3$OR3 <- round(Tabel3$OR3, digits=2)
Tabel3$LL3 <- round(Tabel3$LL3, digits=2)
Tabel3$UL3 <- round(Tabel3$UL3, digits=2)

Tabel3a$OR3a <- round(Tabel3a$OR3a, digits=2)
Tabel3a$LL3a <- round(Tabel3a$LL3a, digits=2)
Tabel3a$UL3a <- round(Tabel3a$UL3a, digits=2)

Univar_totaal$ORUnivar <- round(Univar_totaal$ORUnivar, digits=2)
Univar_totaal$LLUnivar <- round(Univar_totaal$LLUnivar, digits=2)
Univar_totaal$ULUnivar <- round(Univar_totaal$ULUnivar, digits=2)

Tabel4$OR4 <- round(Tabel4$OR4, digits=2)
Tabel4$LL4 <- round(Tabel4$LL4, digits=2)
Tabel4$UL4 <- round(Tabel4$UL4, digits=2)

Tabel5$OR5 <- round(Tabel5$OR5, digits=2)
Tabel5$LL5 <- round(Tabel5$LL5, digits=2)
Tabel5$UL5 <- round(Tabel5$UL5, digits=2)

Tabel6$OR6 <- round(Tabel6$OR6, digits=2)
Tabel6$LL6 <- round(Tabel6$LL6, digits=2)
Tabel6$UL6 <- round(Tabel6$UL6, digits=2)

Tabel6a$OR6a <- round(Tabel6a$OR6a, digits=2)
Tabel6a$LL6a <- round(Tabel6a$LL6a, digits=2)
Tabel6a$UL6a <- round(Tabel6a$UL6a, digits=2)

Univar_sub$OR_Uni_sub <- round(Univar_sub$OR_Uni_sub, digits=2)
Univar_sub$LL_Uni_sub <- round(Univar_sub$LL_Uni_sub, digits=2)
Univar_sub$UL_Uni_sub <- round(Univar_sub$UL_Uni_sub, digits=2)

#intercept verwijderen
Tabel1 <- Tabel1[-1,]
Tabel2 <- Tabel2[-1,]
Tabel3 <- Tabel3[-1,]
Tabel3a <- Tabel3a[-1,]

Tabel4 <- Tabel4[-1,]
Tabel5 <- Tabel5[-1,]
Tabel6 <- Tabel6[-1,]
Tabel6a <- Tabel6a[-1,]

#Let op: bij univariate modellen zitten er meerdere intercepts in de tabel (later corrigeren)

#=================  Labels eraan plakken en in de juiste volgorde zetten ====================##
#====================== Let op: juiste set aan labels gebruiken =============================##

Tabel1_labelled <- merge(Tabel1, Labels1, by= "Categorie", all=TRUE)
Tabel1_labelled <- Tabel1_labelled[order(Tabel1_labelled$Volgorde),]
Tabel1_labelled <- Tabel1_labelled[ , c("Label", "OR1", "LL1", "UL1")]

Tabel2_labelled <- merge(Tabel2, Labels2, by= "Categorie", all=TRUE)
Tabel2_labelled <- Tabel2_labelled[order(Tabel2_labelled$Volgorde),]
Tabel2_labelled <- Tabel2_labelled[ , c("Label", "OR2", "LL2", "UL2")]

Tabel3_labelled <- merge(Tabel3, Labels3, by= "Categorie", all=TRUE)
Tabel3_labelled <- Tabel3_labelled[order(Tabel3_labelled$Volgorde),]
Tabel3_labelled <- Tabel3_labelled[ , c("Label", "OR3", "LL3", "UL3")]

Tabel3a_labelled <- merge(Tabel3a, Labels3a, by= "Categorie", all=TRUE)
Tabel3a_labelled <- Tabel3a_labelled[order(Tabel3a_labelled$Volgorde),]
Tabel3a_labelled <- Tabel3a_labelled[ , c("Label", "OR3a", "LL3a", "UL3a")]

Tabel4_labelled <- merge(Tabel4, Labels4, by= "Categorie", all=TRUE)
Tabel4_labelled <- Tabel4_labelled[order(Tabel4_labelled$Volgorde),]
Tabel4_labelled <- Tabel4_labelled[ , c("Label", "OR4", "LL4", "UL4")]

Tabel5_labelled <- merge(Tabel5, Labels5, by= "Categorie", all=TRUE)
Tabel5_labelled <- Tabel5_labelled[order(Tabel5_labelled$Volgorde),]
Tabel5_labelled <- Tabel5_labelled[ , c("Label", "OR5", "LL5", "UL5")]

Tabel6_labelled <- merge(Tabel6, Labels6, by= "Categorie", all=TRUE)
Tabel6_labelled <- Tabel6_labelled[order(Tabel6_labelled$Volgorde),]
Tabel6_labelled <- Tabel6_labelled[ , c("Label", "OR6", "LL6", "UL6")]

Tabel6a_labelled <- merge(Tabel6a, Labels6a, by= "Categorie", all=TRUE)
Tabel6a_labelled <- Tabel6a_labelled[order(Tabel6a_labelled$Volgorde),]
Tabel6a_labelled <- Tabel6a_labelled[ , c("Label", "OR6a", "LL6a", "UL6a")]

##Let op juiste labels (voor totale populatie is het Labels 3 en voor de subset van werkenden Labels6)

Univar_totaal_labelled <- merge(Univar_totaal, Labels3, by= c("Categorie"), all=TRUE)
Univar_totaal_labelled <- Univar_totaal_labelled[order(Univar_totaal_labelled$Volgorde),]
Univar_totaal_labelled  <- Univar_totaal_labelled[which(Univar_totaal_labelled$Volgorde >= 1),]
Univar_totaal_labelled <- Univar_totaal_labelled[ , c("Label", "ORUnivar", "LLUnivar", "ULUnivar")]

Univar_sub_labelled <- merge(Univar_sub, Labels6, by= c("Categorie"), all=TRUE)
Univar_sub_labelled <- Univar_sub_labelled[order(Univar_sub_labelled$Volgorde),]
Univar_sub_labelled  <- Univar_sub_labelled[which(Univar_sub_labelled$Volgorde >= 1),]
Univar_sub_labelled <- Univar_sub_labelled[ , c("Label", "OR_Uni_sub", "LL_Uni_sub", "UL_Uni_sub")]

##=========================== Combineren van tabellen in totaalsets ==============================##

Modellen_totale_populatie <- merge(Univar_totaal_labelled, Tabel1_labelled, by=c("Label"), all=TRUE)
Modellen_totale_populatie <- merge(Modellen_totale_populatie, Tabel2_labelled, by=c("Label"), all=TRUE)
Modellen_totale_populatie <- merge(Modellen_totale_populatie, Tabel3_labelled, by=c("Label"), all=TRUE)
Modellen_totale_populatie <- merge(Modellen_totale_populatie, Tabel3a_labelled, by=c("Label"), all=TRUE)
Modellen_totale_populatie <- merge(Modellen_totale_populatie, Labels3a, by=c("Label"), all=TRUE)

Modellen_totale_populatie <- Modellen_totale_populatie[order(Modellen_totale_populatie$Volgorde),]
#View(Modellen_totale_populatie)

Modellen_werkende_populatie <- merge(Univar_sub_labelled, Tabel4_labelled, by=c("Label"), all=TRUE)
Modellen_werkende_populatie <- merge(Modellen_werkende_populatie, Tabel5_labelled, by=c("Label"), all=TRUE)
Modellen_werkende_populatie <- merge(Modellen_werkende_populatie, Tabel6_labelled, by=c("Label"), all=TRUE)
Modellen_werkende_populatie <- merge(Modellen_werkende_populatie, Tabel6a_labelled, by=c("Label"), all=TRUE)
Modellen_werkende_populatie <- merge(Modellen_werkende_populatie, Labels6a, by=c("Label"), all=TRUE)
#View(Modellen_werkende_populatie)

Modellen_werkende_populatie <- Modellen_werkende_populatie[order(Modellen_werkende_populatie$Volgorde),]

##==================== verandering in de Odds ratio's tussen de modellen vergelijken =============##

Deltas_totaal <- Modellen_totale_populatie[ , c("Volgorde", "Label", "ORUnivar", "OR1", "OR2", "OR3", "OR3a")]

attach(Deltas_totaal)
Deltas_totaal$Change_Uni_Model1 <- round((OR1-ORUnivar)/ ORUnivar*100, digits=0)
Deltas_totaal$Change_Model1_Model2 <- round((OR2-OR1)/ OR1*100, digits=0)
Deltas_totaal$Change_Model2_Model3 <- round((OR3-OR2)/ OR2*100, digits=0)
Deltas_totaal$Change_Model3_Model3a <- round((OR3a-OR3)/ OR3*100, digits=0)
detach(Deltas_totaal)

Deltas_werkend <- Modellen_werkende_populatie[ , c("Volgorde","Label", "OR_Uni_sub", "OR4", "OR5", "OR6", "OR6a")]

attach(Deltas_werkend)
Deltas_werkend$Change_Uni_Model1 <- round((OR4-OR_Uni_sub)/ OR_Uni_sub*100, digits=0)
Deltas_werkend$Change_Model1_Model2 <- round((OR5-OR4)/ OR4*100, digits=0)
Deltas_werkend$Change_Model2_Model3 <- round((OR6-OR5)/ OR5*100, digits=0)
Deltas_werkend$Change_Model3_Model3a <- round((OR6a-OR6)/ OR6*100, digits=0)
detach(Deltas_werkend)

##================= Wegschrijven van aangemaakte tabellen naar de juiste map =====================## 

setwd("H:\\Resultaten\\3. OddsRatios")
library(writexl)
write_xlsx(Modellen_totale_populatie , "210616_Modellen totale populatie.xlsx")
write_xlsx(Modellen_werkende_populatie , "210616_Modellen werkende populatie.xlsx")

write_xlsx(Deltas_totaal , "210616_Confounding_totaal.xlsx")
write_xlsx(Deltas_werkend , "210616_Confounding_werkend.xlsx")


