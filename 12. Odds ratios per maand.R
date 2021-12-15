
##================================== Inlezen sets ==========================================##

library(haven)
setwd("H:\\Datasets voor analyse")
Long <- read_sav("210614_Finale set_long.sav")

library(readxl)
Labels_totaal <- as.data.frame(read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Labels_totaal"))
Labels_subset <- as.data.frame(read_excel("H:\\Resultaten\\3. OddsRatios\\210517_0500_Variabele labels.xlsx", sheet="Labels_subset"))

Long$Werkend <- Long$Sector
Long$Werkend[is.na(Long$Sector)] <- 0
Long$Werkend[Long$Sector!=0 & Long$Leeftijd >= 18] <- 1

Long$Opleidingsniveau2 <- Long$Opleidingsniveau
Long$Opleidingsniveau[Long$Opleidingsniveau2==1 & Long$Leeftijd < 18] <- 0

Long_sub <- Long[which(Long$Werkend==1),]

#View(Long)

##========================== Aanmaak nieuwe variabelen ========================================##

library(gtools)
library(dplyr)

Long_sub$Inkomen <- as.factor(quantcut(Long_sub$INHBESTINKH, q=5))
Long_sub$Quintile_Inkomen <- Long_sub$Inkomen
levels(Long_sub$Quintile_Inkomen) <- c(1,2,3,4,5)

Long_sub$Inkomen_pers <- as.factor(quantcut(Long_sub$SLNINGLD_mean, q=5))
Long_sub$Quintile_Inkomen_pers <- Long_sub$Inkomen_pers
levels(Long_sub$Quintile_Inkomen_pers) <- c(1,2,3,4,5)
ftable(Long_sub$Quintile_Inkomen_pers)

Long$Leeftijd_cats <- Long$Leeftijd
Long$Leeftijd_cats[Long$Leeftijd < 12] <- 1
Long$Leeftijd_cats[Long$Leeftijd >= 12 & Long$Leeftijd < 18] <- 2
Long$Leeftijd_cats[Long$Leeftijd >= 18 & Long$Leeftijd < 30] <- 3
Long$Leeftijd_cats[Long$Leeftijd >= 30 & Long$Leeftijd < 45] <- 4
Long$Leeftijd_cats[Long$Leeftijd >= 45 & Long$Leeftijd < 65] <- 5
Long$Leeftijd_cats[Long$Leeftijd >= 65] <- 6

Long_sub$Leeftijd_cats <- Long_sub$Leeftijd
Long_sub$Leeftijd_cats[Long_sub$Leeftijd < 30] <- 1
Long_sub$Leeftijd_cats[Long_sub$Leeftijd >= 30 & Long_sub$Leeftijd < 40] <- 2
Long_sub$Leeftijd_cats[Long_sub$Leeftijd >= 40 & Long_sub$Leeftijd < 50] <- 3
Long_sub$Leeftijd_cats[Long_sub$Leeftijd >= 50] <- 4

Long$Dichtheid <- Long$bev_dich_wijk
Long$Dichtheid[Long$bev_dich_wijk <= 1082] <-1
Long$Dichtheid[Long$bev_dich_wijk > 1082 & Long$bev_dich_wijk <= 3756] <-2
Long$Dichtheid[Long$bev_dich_wijk > 3756 & Long$bev_dich_wijk <= 5410] <-3
Long$Dichtheid[Long$bev_dich_wijk > 5410 & Long$bev_dich_wijk <= 6947] <-4
Long$Dichtheid[Long$bev_dich_wijk > 6947] <-5

##=============================== Variabelen lezen als factor ======================================##

Long$ETNGRP <- as.factor(Long$ETNGRP)
Long$Opleidingsniveau <- as.factor(Long$Opleidingsniveau)
Long$Sector <- as.factor(Long$Sector)
Long$Leeftijd_cats <- as.factor(Long$Leeftijd_cats)
Long$Quintile_Inkomen <- as.factor(Long$Quintile_Inkomen)
Long$Bron <- as.factor(Long$Bron)
Long$Geslacht <- as.factor(Long$GBAGESLACHT)
Long$Huishouden <- as.factor(Long$Huishouden)
Long$Dichtheid <- as.factor(Long$Dichtheid)

Long_sub$ETNGRP <- as.factor(Long_sub$ETNGRP)
Long_sub$Opleidingsniveau <- as.factor(Long_sub$Opleidingsniveau)
Long_sub$Sector <- as.factor(Long_sub$Sector)
Long_sub$Leeftijd_cats <- as.factor(Long_sub$Leeftijd_cats)
Long_sub$Quintile_Inkomen <- as.factor(Long_sub$Quintile_Inkomen)
Long_sub$Geslacht <- as.factor(Long_sub$GBAGESLACHT)
Long_sub$Contract_onbepaalde_tijd <- as.factor(Long_sub$Contract_onbepaalde_tijd)
Long_sub$Voltijd_dienstverband <- as.factor(Long_sub$Voltijd_dienstverband)

##============================ Wanneer nodig: referentiegroep aanpassen ======================================##

Long$Quintile_Inkomen <- relevel(Long$Quintile_Inkomen, ref=3)
Long$Opleidingsniveau <- relevel(Long$Opleidingsniveau, ref=2)
Long$Bron <- relevel(Long$Bron, ref=1)
Long$Leeftijd_cats <- relevel(Long$Leeftijd_cats, ref= 3)
Long$Huishouden <- relevel(Long$Huishouden, ref= 2)
Long$Dichtheid <- relevel(Long$Dichtheid, ref= 3)

Long_sub$Sector <- relevel(Long_sub$Sector, ref=1)
Long_sub$Quintile_Inkomen <- relevel(Long_sub$Quintile_Inkomen, ref=3)
Long_sub$Opleidingsniveau <- relevel(Long_sub$Opleidingsniveau, ref=2)
Long_sub$Leeftijd_cats <- relevel(Long_sub$Leeftijd_cats, ref= 1)

#================================= Aanmaak sets per maand ======================================##

Maart2020 <- Long[which(Long$Maand==1),]
April2020 <- Long[which(Long$Maand==2),]
Mei2020 <- Long[which(Long$Maand==3),]
Juni2020 <- Long[which(Long$Maand==4),]
Juli2020 <- Long[which(Long$Maand==5),]
Aug2020 <- Long[which(Long$Maand==6),]
Sept2020 <- Long[which(Long$Maand==7),]
Okt2020 <- Long[which(Long$Maand==8),]
Nov2020 <- Long[which(Long$Maand==9),]
Dec2020 <- Long[which(Long$Maand==10),]
Jan2021 <- Long[which(Long$Maand==11),]
Feb2021 <- Long[which(Long$Maand==12),]
Maart2021 <- Long[which(Long$Maand==13),]
April2021 <- Long[which(Long$Maand==14),]
Mei2021 <- Long[which(Long$Maand==15),]

Maart2020_sub <- Long_sub[which(Long_sub$Maand==1),]
April2020_sub <- Long_sub[which(Long_sub$Maand==2),]
Mei2020_sub <- Long_sub[which(Long_sub$Maand==3),]
Juni2020_sub <- Long_sub[which(Long_sub$Maand==4),]
Juli2020_sub <- Long_sub[which(Long_sub$Maand==5),]
Aug2020_sub <- Long_sub[which(Long_sub$Maand==6),]
Sept2020_sub  <- Long_sub[which(Long_sub$Maand==7),]
Okt2020_sub  <- Long_sub[which(Long_sub$Maand==8),]
Nov2020_sub  <- Long_sub[which(Long_sub$Maand==9),]
Dec2020_sub  <- Long_sub[which(Long_sub$Maand==10),]
Jan2021_sub  <- Long_sub[which(Long_sub$Maand==11),]
Feb2021_sub  <- Long_sub[which(Long_sub$Maand==12),]
Maart2021_sub  <- Long_sub[which(Long_sub$Maand==13),]
April2021_sub  <- Long_sub[which(Long_sub$Maand==14),]
Mei2021_sub  <- Long_sub[which(Long_sub$Maand==15),]

##============================== Odds ratio's per maand voor model 3 (hele popluatie) =============================================###

library(lme4)
Model3_Maart2020  <- glm(data=Maart2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                           Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_April2020  <- glm(data=April2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                           Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Mei2020  <- glm(data=Mei2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                         Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Juni2020  <- glm(data=Juni2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                          Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Juli2020  <- glm(data=Juli2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                          Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Aug2020  <- glm(data=Aug2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                         Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Sept2020  <- glm(data=Sept2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                          Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Okt2020  <- glm(data=Okt2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                         Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Nov2020  <- glm(data=Nov2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                         Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Dec2020  <- glm(data=Dec2020, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                         Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Jan2021  <- glm(data=Jan2021, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                         Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Feb2021  <- glm(data=Feb2021, Besmet ~ ETNGRP, family= "binomial")
Model3_Maart2021  <- glm(data=Maart2021, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                           Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_April2021  <- glm(data=April2021, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                           Geslacht + Huishouden + Dichtheid, family= "binomial")
Model3_Mei2021  <- glm(data=Mei2021, Besmet ~ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Bron + Leeftijd_cats + 
                           Geslacht + Huishouden + Dichtheid, family= "binomial")

OR_Maart2020 <- as.data.frame(summary(Model3_Maart2020)$coefficients)
OR_April2020 <- as.data.frame(summary(Model3_April2020)$coefficients)
OR_Mei2020 <- as.data.frame(summary(Model3_Juni2020)$coefficients)
OR_Juni2020 <- as.data.frame(summary(Model3_Juni2020)$coefficients)
OR_Juli2020 <- as.data.frame(summary(Model3_Juli2020)$coefficients)
OR_Aug2020 <- as.data.frame(summary(Model3_Aug2020)$coefficients)
OR_Sept2020 <- as.data.frame(summary(Model3_Sept2020)$coefficients)
OR_Okt2020 <- as.data.frame(summary(Model3_Okt2020)$coefficients)
OR_Nov2020 <- as.data.frame(summary(Model3_Nov2020)$coefficients)
OR_Dec2020 <- as.data.frame(summary(Model3_Dec2020)$coefficients)
OR_Jan2021 <- as.data.frame(summary(Model3_Jan2021)$coefficients)
OR_Feb2021 <- as.data.frame(summary(Model3_Feb2021)$coefficients)
OR_Maart2021 <- as.data.frame(summary(Model3_Maart2021)$coefficients)
OR_April2021 <- as.data.frame(summary(Model3_April2021)$coefficients)
OR_Mei2021 <- as.data.frame(summary(Model3_Mei2021)$coefficients)

OR_Maart2020$Categorie <- rownames(OR_Maart2020)
OR_April2020$Categorie <- rownames(OR_April2020)
OR_Mei2020$Categorie <- rownames(OR_Mei2020)
OR_Mei2020$Categorie <- rownames(OR_Mei2020)
OR_Juni2020$Categorie <- rownames(OR_Juni2020)
OR_Juli2020$Categorie <- rownames(OR_Juli2020)
OR_Aug2020$Categorie <- rownames(OR_Aug2020)
OR_Sept2020$Categorie <- rownames(OR_Sept2020)
OR_Okt2020$Categorie<- rownames(OR_Okt2020)
OR_Nov2020$Categorie <- rownames(OR_Nov2020)
OR_Dec2020$Categorie <- rownames(OR_Dec2020)
OR_Jan2021$Categorie <- rownames(OR_Jan2021)
OR_Feb2021$Categorie <- rownames(OR_Feb2021)
OR_Maart2021$Categorie <- rownames(OR_Maart2021)
OR_April2021$Categorie <- rownames(OR_April2021)
OR_Mei2021$Categorie <- rownames(OR_Mei2021)

OR_Maart2020$Maand <- "2020-03"
OR_April2020$Maand <- "2020-04"
OR_Mei2020$Maand <- "2020-05"
OR_Juni2020$Maand <- "2020-06"
OR_Juli2020$Maand <- "2020-07"
OR_Aug2020$Maand <- "2020-08"
OR_Sept2020$Maand <- "2020-09"
OR_Okt2020$Maand <- "2020-10"
OR_Nov2020$Maand <- "2020-11"
OR_Dec2020$Maand <- "2020-12"
OR_Jan2021$Maand <- "2021-01"
OR_Feb2021$Maand <- "2021-02"
OR_Maart2021$Maand <- "2021-03"
OR_April2021$Maand <- "2021-04"
OR_Mei2021$Maand <- "2021-05"

OR_permaand <- rbind(OR_Maart2020, OR_April2020, OR_Mei2020, OR_Juni2020, OR_Juli2020,
                     OR_Aug2020, OR_Sept2020, OR_Okt2020, OR_Nov2020, OR_Dec2020,
                     OR_Jan2021, OR_Feb2021, OR_Maart2021, OR_April2021, OR_Mei2021)

##========== Aanmaken van Odds ratio's en betrouwbaarheidsintevallen =======##

OR_permaand$OR <- exp(OR_permaand$Estimate)
OR_permaand$LL <- exp(OR_permaand$Estimate - 2*OR_permaand$`Std. Error`)
OR_permaand$UL <- exp(OR_permaand$Estimate + 2*OR_permaand$`Std. Error`)

OR_permaand$OR  <- round(OR_permaand$OR , digits=2)
OR_permaand$LL  <- round(OR_permaand$LL , digits=2)
OR_permaand$UL  <- round(OR_permaand$UL , digits=2)

##======================== Weghalen van overbodige variabelen ==========================##

OR_permaand$Estimate <- NULL
OR_permaand$`Std. Error` <- NULL
OR_permaand$`z value` <- NULL
OR_permaand$`Pr(>|z|)` <- NULL

OR_permaand3 <- merge(OR_permaand, Labels_totaal, by= c("Categorie"), all=TRUE)

library(writexl)
setwd("H:\\Resultaten\\3. OddsRatios")
write_xlsx(OR_permaand3, "210603_Odds ratios per maand model 3.xlsx")

##====================== Odds ratio's per maand voor model 6 (werkenden)====================== ##

library(lme4)
Model6_Maart2020  <- glm(data=Maart2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                           Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_April2020  <- glm(data=April2020_sub, Besmet ~ Sector +  ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                           Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Mei2020  <- glm(data=Mei2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Juni2020  <- glm(data=Juni2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                          Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Juli2020  <- glm(data=Juli2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                          Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Aug2020  <- glm(data=Aug2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Sept2020  <- glm(data=Sept2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                          Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Okt2020  <- glm(data=Okt2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Nov2020  <- glm(data=Nov2020_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Dec2020  <- glm(data=Dec2020_sub, Besmet ~ Sector +  ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Jan2021  <- glm(data=Jan2021_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Feb2021  <- glm(data=Feb2021_sub, Besmet ~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                         Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Maart2021  <- glm(data=Maart2021_sub, Besmet ~ Sector+ ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                           Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_April2021  <- glm(data=April2021_sub, Besmet~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                           Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")
Model6_Mei2021  <- glm(data=Mei2021_sub, Besmet~ Sector + ETNGRP + Quintile_Inkomen + Opleidingsniveau + Leeftijd_cats + 
                           Geslacht + Contract_onbepaalde_tijd + Voltijd_dienstverband, family= "binomial")

OR_Maart2020 <- as.data.frame(summary(Model6_Maart2020)$coefficients)
OR_April2020 <- as.data.frame(summary(Model6_April2020)$coefficients)
OR_Mei2020 <- as.data.frame(summary(Model6_Juni2020)$coefficients)
OR_Juni2020 <- as.data.frame(summary(Model6_Juni2020)$coefficients)
OR_Juli2020 <- as.data.frame(summary(Model6_Juli2020)$coefficients)
OR_Aug2020 <- as.data.frame(summary(Model6_Aug2020)$coefficients)
OR_Sept2020 <- as.data.frame(summary(Model6_Sept2020)$coefficients)
OR_Okt2020 <- as.data.frame(summary(Model6_Okt2020)$coefficients)
OR_Nov2020 <- as.data.frame(summary(Model6_Nov2020)$coefficients)
OR_Dec2020 <- as.data.frame(summary(Model6_Dec2020)$coefficients)
OR_Jan2021 <- as.data.frame(summary(Model6_Jan2021)$coefficients)
OR_Feb2021 <- as.data.frame(summary(Model6_Feb2021)$coefficients)
OR_Maart2021 <- as.data.frame(summary(Model6_Maart2021)$coefficients)
OR_April2021 <- as.data.frame(summary(Model6_April2021)$coefficients)
OR_Mei2021 <- as.data.frame(summary(Model6_Mei2021)$coefficients)

OR_Maart2020$Categorie <- rownames(OR_Maart2020)
OR_April2020$Categorie <- rownames(OR_April2020)
OR_Mei2020$Categorie <- rownames(OR_Mei2020)
OR_Mei2020$Categorie <- rownames(OR_Mei2020)
OR_Juni2020$Categorie <- rownames(OR_Juni2020)
OR_Juli2020$Categorie <- rownames(OR_Juli2020)
OR_Aug2020$Categorie <- rownames(OR_Aug2020)
OR_Sept2020$Categorie <- rownames(OR_Sept2020)
OR_Okt2020$Categorie <- rownames(OR_Okt2020)
OR_Nov2020$Categorie <- rownames(OR_Nov2020)
OR_Dec2020$Categorie <- rownames(OR_Dec2020)
OR_Jan2021$Categorie <- rownames(OR_Jan2021)
OR_Feb2021$Categorie <- rownames(OR_Feb2021)
OR_Maart2021$Categorie <- rownames(OR_Maart2021)
OR_April2021$Categorie <- rownames(OR_April2021)
OR_Mei2021$Categorie <- rownames(OR_Mei2021)

OR_Maart2020$Maand <- "2020-03"
OR_April2020$Maand <- "2020-04"
OR_Mei2020$Maand <- "2020-05"
OR_Juni2020$Maand <- "2020-06"
OR_Juli2020$Maand <- "2020-07"
OR_Aug2020$Maand <- "2020-08"
OR_Sept2020$Maand <- "2020-09"
OR_Okt2020$Maand <- "2020-10"
OR_Nov2020$Maand <- "2020-11"
OR_Dec2020$Maand <- "2020-12"
OR_Jan2021$Maand <- "2021-01"
OR_Feb2021$Maand <- "2021-02"
OR_Maart2021$Maand <- "2021-03"
OR_April2021$Maand <- "2021-04"
OR_Mei2021$Maand <- "2021-05"

OR_permaand <- rbind(OR_Maart2020, OR_April2020, OR_Mei2020, OR_Juni2020, OR_Juli2020,
                     OR_Aug2020, OR_Sept2020, OR_Okt2020, OR_Nov2020, OR_Dec2020,
                     OR_Jan2021, OR_Feb2021, OR_Maart2021, OR_April2021, OR_Mei2021)
View(OR_permaand)

##========== Aanmaken van Odds ratio's en betrouwbaarheidsintervallen ===================##

OR_permaand$OR <- exp(OR_permaand$Estimate)
OR_permaand$LL <- exp(OR_permaand$Estimate - 2*OR_permaand$`Std. Error`)
OR_permaand$UL <- exp(OR_permaand$Estimate + 2*OR_permaand$`Std. Error`)

OR_permaand$OR  <- round(OR_permaand$OR , digits=2)
OR_permaand$LL  <- round(OR_permaand$LL , digits=2)
OR_permaand$UL  <- round(OR_permaand$UL , digits=2)

##======================== Weghalen van overbodige variabelen ==========================##

OR_permaand$Estimate <- NULL
OR_permaand$`Std. Error` <- NULL
OR_permaand$`z value` <- NULL
OR_permaand$`Pr(>|z|)` <- NULL

OR_permaand <- merge(OR_permaand, Labels_subset, by= c("Categorie"), all=TRUE)
View(OR_permaand)

library(writexl)
setwd("H:\\Resultaten\\3. OddsRatios")
write_xlsx(OR_permaand, "210603_Odds ratios per maand model 6.xlsx")

##================ Histrogram van besmettingen per maand ============================##

library(haven)
setwd("H:\\Datasets voor analyse")
Long <- read_sav("210531_Tweede upload long.sav")

Histo <- as.data.frame(table(Long$Besmet, Long$Maand))
Hist <- Histo[which(Histo$Var1==1),]
View(Hist)

library(ggplot2)
Hist_maand <- ggplot(data= Hist, aes(x= Var2, y= Freq)) + geom_bar(stat="identity")
Hist_maand 

library(dplyr)
Hist_Regio <- Long %>%
  group_by(Maand, GGD_Regio)%>%
  summarise(Besmet= sum(Besmet))

Hist_Regio$Regio <- as.factor(Hist_Regio$GGD_Regio)
#View(Hist_Regio)

Hist_Regio$Maand <- ordered(Hist_Regio$Maand,
 levels=c(1,2,3,4,5,6,7,8,9.10,11,12,13,14,15),
 labels=c("2020-03", "2020-04","2020-05","2020-06","2020-07",
          "2020-08","2020-09","2020-10", "2020-11","2020-12", 
        "2021-01","2021-02","2021-03", "2021-04", "2021-05"))

Hist_Regio$Regio <- ordered(Hist_Regio$Regio,
                            levels=c(1,2,3),
                            labels=c("Zuid-Holland Zuid", "Rotterdam Rijnmond","Zeeland"))

library(ggplot2)
Histo_Regio <- ggplot(data= Hist_Regio, aes(x= Maand, y= Besmet, fill= Regio)) + 
  geom_bar(stat="identity")
Histo_Regio + facet_wrap(Hist_Regio$Regio) +
  theme(axis.text.x= element_text(angle=90)) 




