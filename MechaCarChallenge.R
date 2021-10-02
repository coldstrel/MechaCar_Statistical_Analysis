## DERIVABLE N.1
library(dplyr)
# Hold the csv file into a variable
Mecha <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F )

# Perform a linear regression using lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha)

#Determine the p-value and the r-squared value 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha))

## DERIVABLE N.2
# Save the the CSV file into a variable
suspension <- read.csv(file="Suspension_Coil.csv",  check.names = F, stringsAsFactors = F)

# Make a summary using PSI column
suspension_summary <- suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) 

# create a lot summary using the group by function
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
