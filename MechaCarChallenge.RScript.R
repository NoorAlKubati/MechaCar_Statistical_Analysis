
# Clear workspace

rm(list=ls())
cat("\014")
ifelse(!is.null(dev.list()),dev.off(),NA)


####To check for installed packages and load them   ############

list.of.packages <- c("dplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

#Load all packages
lapply(list.of.packages, require, character.only=TRUE)

####Change the Working Directory   ############
setwd("C:\\Users\\razza\\Dropbox\\Noor Data Camp KU 2022\\KU-VIRT-DATA-PT-11-2022-U-B\\16-R\\Starter_Code")


################################################################
####Part 1: Linear Regression to Predict MPG        ############
################################################################

MechaCar_mpg <- read.csv(file = "MechaCar_mpg.csv", header = TRUE)

reg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

summary(reg_model)


################################################################
####Part 2: Create Visualizations for the Trip Analysis  #######
################################################################

Suspension_Coil <- read.csv(file = "Suspension_Coil.csv", header = TRUE)

total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


################################################################
####Part 3: T-Tests on Suspension Coils             ############
################################################################

all_sample_Ttest <- t.test(Suspension_Coil$PSI, mu = 1500)
lot1_sample_Ttest <- t.test(Suspension_Coil$PSI[which(Suspension_Coil$Manufacturing_Lot=='Lot1')], mu = 1500)
lot2_sample_Ttest <- t.test(Suspension_Coil$PSI[which(Suspension_Coil$Manufacturing_Lot=='Lot2')], mu = 1500)
lot3_sample_Ttest <- t.test(Suspension_Coil$PSI[which(Suspension_Coil$Manufacturing_Lot=='Lot3')], mu = 1500)


