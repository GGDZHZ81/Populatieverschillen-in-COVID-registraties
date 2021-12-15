

##=========================================================== Inlezen sets ==========================================##

library(haven)
setwd("H:\\Datasets voor analyse")
Imp1 <- read_sav("210610_Imp1_new.sav")

library(readxl)
Labels_totaal <- as.data.frame(read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Labels_totaal"))

setwd("H:\\Resultaten\\210614_Factsheet 1")
Ratios <- as.data.frame(read_excel("2. Incidentie per determinant totale periode.xlsx"))
subset <- c("Label_text", "Ratio Besmet_Getest", "Ratio Positief CoronIT_Besmet", "Ratio Getest door GGD_ Totaal")
Ratios <- Ratios[subset]

#View(Labels_totaal)
#View(Ratios)
#View(Imp1)

Inst <- Imp1[which(Imp1$Huishouden !=7 & Imp1$Huishouden !=8),]
#ftable(Inst$Huishouden)

##===================================================== Aanmaak nieuwe variabelen ===============================================##

library(gtools)
library(dplyr)

Inst$Leeftijd_cats <- Inst$Leeftijd
Inst$Leeftijd_cats[Inst$Leeftijd < 12] <- 1
Inst$Leeftijd_cats[Inst$Leeftijd >= 12 & Inst$Leeftijd < 18] <- 2
Inst$Leeftijd_cats[Inst$Leeftijd >= 18 & Inst$Leeftijd < 30] <- 3
Inst$Leeftijd_cats[Inst$Leeftijd >= 30 & Inst$Leeftijd < 45] <- 4
Inst$Leeftijd_cats[Inst$Leeftijd >= 45 & Inst$Leeftijd < 65] <- 5
Inst$Leeftijd_cats[Inst$Leeftijd >= 65] <- 6

Inst$Dichtheid <- as.factor(quantcut(Inst$bev_dich_wijk, q=5))
levels(Inst$Dichtheid) <- c(1,2,3,4,5)

##================= Let op:Bevolkingdsichtheid opnieuw indelen in 5 gelijke groepen na splitsing op GGD Regio ============##
##============================================ Variabelen lezen als factor ===============================================##

Inst$ETNGRP <- as.factor(Inst$ETNGRP)
Inst$Opleidingsniveau <- as.factor(Inst$Opleidingsniveau)
Inst$Sector <- as.factor(Inst$Sector)
Inst$Leeftijd_cats <- as.factor(Inst$Leeftijd_cats)
Inst$Quintile_Inkomen <- as.factor(Inst$Quintile_Inkomen)
Inst$Bron <- as.factor(Inst$Bron)
Inst$Geslacht <- as.factor(Inst$GBAGESLACHT)
Inst$Huishouden <- as.factor(Inst$Huishouden)
Inst$Dichtheid <- as.factor(Inst$Dichtheid)

##========================================== Wanneer nodig: referentiegroep aanpassen ====================================##

Inst$Quintile_Inkomen <- relevel(Inst$Quintile_Inkomen, ref=3)
Inst$Opleidingsniveau <- relevel(Inst$Opleidingsniveau, ref=2)
Inst$Bron <- relevel(Inst$Bron, ref=1)
Inst$Leeftijd_cats <- relevel(Inst$Leeftijd_cats, ref= 3)
Inst$Huishouden <- relevel(Inst$Huishouden, ref= 2)

##============================== Odds ratio's per GG regio voor model 3 (hele popluatie) =============================================###

Inst$Besmet <- Inst$In_Osiris 

library(lme4)
Model3_Inst  <- glm(data= Inst, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                     Geslacht + Huishouden + Dichtheid, family= "binomial")
summary(Model3_Inst)

Instelling <- as.data.frame(summary(Model3_Inst)$coefficients)
Instelling$OR <- exp(Instelling$Estimate)
Instelling$LL <- exp(Instelling$Estimate - 2*Instelling$`Std. Error`)
Instelling$UL <- exp(Instelling$Estimate + 2*Instelling$`Std. Error`)
View(Instelling)

Instelling$Categorie <- rownames(Instelling)
Inst <- merge(Instelling, Labels_totaal, by=c("Categorie"), all=TRUE)
View(Imp1)
View(Inst)

library(writexl)
setwd("H:\\Resultaten\\3. OddsRatios")
write_xlsx(Inst, "210624_Model 3 zonder instellingen.xlsx")

##======================== Aggregeren op Huihsoudniveau ====================###

Imp1$Aantal <- 1

library(dplyr)
   HH_agg <- Imp1 %>%
     group_by(RINOBJECTNUMMER) %>%
     summarise(Besmet= sum(In_Osiris),
               Getest= sum(In_CoronIT),
               Pos_CoronIT= sum (Pos_CoronIT),
               Totaal=sum(Aantal),
               Huishouden= mean(Huishouden))

View(HH_agg)
HH_agg$Huishouden <- as.factor(HH_agg$Huishouden)
ftable(HH_agg$Huishouden)







