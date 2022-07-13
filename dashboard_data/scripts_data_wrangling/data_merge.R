#setwd('..')
setwd("C:/Users/met48/Desktop/V1.1_CHERR-mental_health_data_processing/dashboard_data")

social_medical <- read.csv("data_intermediate/social_medical.csv")
TX_health_workers_2020 <- read.csv("data_intermediate/TX_health_workers_2020.csv")
data_merged <- merge(social_medical, TX_health_workers_2020, by.x="fips", by.y="FIPS")
data_merged[data_merged == "."] <- NA
data_merged[data_merged == "*"] <- NA
data_merged[data_merged == ""] <- NA
data_merged$Depression <- as.numeric(data_merged$Depression)
data_merged$Alcohol_Abuse <- as.numeric(data_merged$Alcohol_Abuse)
data_merged$Autism_Spectrum_Disorders <- as.numeric(data_merged$Autism_Spectrum_Disorders)
data_merged$Drug_Abuse_Substance_Abuse <- as.numeric(data_merged$Drug_Abuse_Substance_Abuse)
data_merged$Schizophrenia_Other_Psychotic_Disorders <- as.numeric(data_merged$Schizophrenia_Other_Psychotic_Disorders)

data_merged$percent_comp <- NA
for(i in 1:nrow(data_merged)){
  data_merged[i,]$percent_comp <- 1-sum(is.na(data_merged[i,]))/(ncol(data_merged)-3)
}

write.csv(data_merged, "dashboard_data_v_1_1.csv", row.names=F)

