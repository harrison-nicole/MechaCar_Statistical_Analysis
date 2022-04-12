# DELIVERABLE 1
library(dplyr)
library(tidyverse)


#import Data
MechaCar <- read.csv(file="MechaCar_mpg.csv")
head(MechaCar)
# Summary function for linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
             ground_clearance + AWD, data=MechaCar))


# DELIVERABLE 2

SuspensionCoil = read.csv("Suspension_Coil.csv")
total_summary <- SuspensionCoil %>% summarize( Mean = mean(PSI),
                                        Median = median(PSI),
                                        Variance = var(PSI),
                                        SD = sd(PSI))

lot_summary <- SuspensionCoil %>%
  group_by(Manufacturing_Lot) %>%
  summarize( Mean = mean(PSI),
             Median = median(PSI),
             Variance = var(PSI),
             SD = sd(PSI))

#DELIVERABLE 3 T tests on Suspension Coils
# is the PSI across all manufacturing lots statistically different from the population mean of 1500 pounds per square inch? 
t.test(SuspensionCoil$PSI, mu=1500)


# Lot 1 
lot1 <- subset(SuspensionCoil, Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu=1500)

# Lot 2
lot2 <- subset(SuspensionCoil, Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu=1500)

# Lot 3
lot3 <- subset(SuspensionCoil, Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu=1500)
