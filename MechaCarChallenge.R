library(tidyverse)
# multiple linear regression of MechaCar data
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

# summary of suspension coil data
# ?summarize()
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(mean = mean(PSI), median = median(PSI), variance=var(PSI), SD =sd(PSI), .groups = 'keep')
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance=var(PSI), SD =sd(PSI), .groups = 'keep')

# t-tests of suspension coil data
# ?t.test()
t.test(suspension_table$PSI, mu=1500)
lot1_table <- subset(suspension_table, Manufacturing_Lot == "Lot1")
t.test(lot1_table$PSI, mu=1500)
lot2_table <- subset(suspension_table, Manufacturing_Lot == "Lot2")
t.test(lot2_table$PSI, mu=1500)
lot3_table <- subset(suspension_table, Manufacturing_Lot == "Lot3")
t.test(lot3_table$PSI, mu=1500)

