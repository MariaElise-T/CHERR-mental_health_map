#setwd('..')
setwd("C:/Users/met48/Desktop/V1.1_CHERR-mental_health_data_processing/dashboard_data")

LCDCs_2020 <- read.delim("data_raw/LCDCs_2020.csv")
LCDCs_2020 <- LCDCs_2020[,c(1,2,3,5)]

licensed_clinical_SWs_2020 <- read.delim("data_raw/licensed_clinical_SWs_2020.csv")
licensed_clinical_SWs_2020 <- licensed_clinical_SWs_2020[,c(1,3,5)]

licensed_counselors_2020 <- read.delim("data_raw/licensed_counselors_2020.csv")
licensed_counselors_2020 <- licensed_counselors_2020[,c(1,3,5)]

social_workers_bach_2020 <- read.delim("data_raw/social_workers_bach_2020.csv")
social_workers_bach_2020 <- social_workers_bach_2020[,c(1,3,5)]

social_workers_masters_2020 <- read.delim("data_raw/social_workers_masters_2020.csv")
social_workers_masters_2020 <- social_workers_masters_2020[,c(1,3,5)]

texas_PCPs_per_capita <- read.csv("data_raw/texas_PCPs_per_capita.csv")
texas_PCPs_per_capita <- texas_PCPs_per_capita[,c(1,3,5)]

TX_health_workers_2020 <- merge(LCDCs_2020, licensed_clinical_SWs_2020, by="County")
TX_health_workers_2020 <- merge(TX_health_workers_2020, licensed_counselors_2020, by="County")
TX_health_workers_2020 <- merge(TX_health_workers_2020, social_workers_bach_2020, by="County")
TX_health_workers_2020 <- merge(TX_health_workers_2020, social_workers_masters_2020, by="County")
TX_health_workers_2020 <- merge(TX_health_workers_2020, texas_PCPs_per_capita, by="County")

TX_health_workers_2020$County <- paste(TX_health_workers_2020$County, "County")

all_urban_scores_by_FIPS <- read.csv("data_raw/all_urban_scores_by_FIPS.csv")
all_urban_scores_by_FIPS <- all_urban_scores_by_FIPS[which(all_urban_scores_by_FIPS$State=='TX'),]

TX_health_workers_2020 <- merge(TX_health_workers_2020, all_urban_scores_by_FIPS, by.x="County", by.y="County_Name", all.x=T)

write.csv(TX_health_workers_2020, "data_intermediate/TX_health_workers_2020.csv", row.names = F)


