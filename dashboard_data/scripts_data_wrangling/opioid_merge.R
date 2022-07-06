library(stats)

opioid_rates_per_100_2020 <- read.csv("~/Desktop/opioid_rates_per_100_2020.csv")
texas_PCPs_per_capita <- read.csv("~/Desktop/texas_PCPs_per_capita.csv")

opioid_rates_per_100_2020 <- opioid_rates_per_100_2020[which(opioid_rates_per_100_2020$State == 'TX'),]
texas_PCPs_per_capita$County <- toupper(texas_PCPs_per_capita$County)

PCP_opioids_merged <- merge(opioid_rates_per_100_2020, texas_PCPs_per_capita, by="County")

opioids_low <- quantile(PCP_opioids_merged$opioid_per_100, c(.33))[["33%"]]
opioids_mid <- quantile(PCP_opioids_merged$opioid_per_100, c(.66))[["66%"]]
PCP_opioids_merged$opioid_rank <- ifelse(PCP_opioids_merged$opioid_per_100 > opioids_mid, "High", ifelse(PCP_opioids_merged$opioid_per_100 < opioids_low, "Low", "Medium"))

opioids_low <- quantile(PCP_opioids_merged$Ratio.of.Primary.Care.Physicians.to.100.000.Population, c(.33))[["33%"]]
opioids_mid <- quantile(PCP_opioids_merged$Ratio.of.Primary.Care.Physicians.to.100.000.Population, c(.66))[["66%"]]
PCP_opioids_merged$PCP_rank <- ifelse(PCP_opioids_merged$Ratio.of.Primary.Care.Physicians.to.100.000.Population > opioids_mid, "High", ifelse(PCP_opioids_merged$Ratio.of.Primary.Care.Physicians.to.100.000.Population < opioids_low, "Low", "Medium"))

write.csv(PCP_opioids_merged, "PCP_opioids_merged.csv", row.names=F)
