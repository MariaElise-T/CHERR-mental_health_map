library(readxl)
library(stringr)

#setwd('..')
setwd("C:/Users/met48/Desktop/V1.1_CHERR-mental_health_data_processing/dashboard_data")

# Import poverty rates

poverty_rates_2020 <- read_excel("data_raw/est20all.xls", skip = 3)
poverty_rates_2020$fips <- paste(poverty_rates_2020$`State FIPS Code`, poverty_rates_2020$`County FIPS Code`, sep='')

# Import chronic conditions

chronic_conditions_2018 <- read_excel("data_raw/County_Table_Chronic_Conditions_Prevalence_by_Age_2018.xlsx", sheet = "All Beneficiaries")
colnames(chronic_conditions_2018) <- c("state", "county", "fips", "Alcohol_Abuse", "Alzheimers_Disease_Dementia", 
                                       "Arthritis","Asthma",	"Atrial_Fibrillation",	"Autism_Spectrum_Disorders",	
                                       "Cancer",	"Chronic_Kidney_Disease",	"COPD",	"Depression", 	"Diabetes",	
                                       "Drug_Abuse_Substance_Abuse",	"HIV_AIDS",	"Heart_Failure", "Hepatitis_B_and_C", 
                                       "Hyperlipidemia",	"Hypertension",	"Ischemic_Heart_Disease",	"Osteoporosis",	
                                       "Schizophrenia_Other_Psychotic_Disorders", "Stroke")

chronic_conditions_2018 <- chronic_conditions_2018[6:nrow(chronic_conditions_2018),]

# Import unemployment

unemployment <- read.csv("data_raw/laucntycur14.txt", header=FALSE, sep="|")
colnames(unemployment) <- c("LAUS_area_code", "state_fips", "county_fips", "county", "period", "employed", "unemployed", "level", "rate")
unemployment <- unemployment[7:nrow(unemployment),]
unemployment$fips <- paste(unemployment$state_fips, unemployment$county_fips, sep='')
unemployment$fips <- gsub(" ", "", unemployment$fips, fixed = TRUE)
unemployment <- unemployment[which(unemployment$period=="   Mar-22  "),] 

# Import incarceration

incarceration_trends <- read.csv("data_raw/incarceration-trends/incarceration_trends_texas_2018.csv")
incarceration_trends$fips <- str_pad(incarceration_trends$fips, 5, pad = "0")

# Data merge

social_medical <- merge(poverty_rates_2020, chronic_conditions_2018, by="fips")
social_medical <- merge(social_medical, unemployment, by="fips")
social_medical <- merge(social_medical, incarceration_trends, by="fips")

# Data prune/save

social_medical <- social_medical[which(social_medical$state.x == 'Texas'),]

social_medical$pov_perc_all <- social_medical$`Poverty Percent, All Ages`
social_medical$pov_perc_under_18 <- social_medical$`Poverty Percent, Age 0-17`
social_medical$pov_perc_under_5 <- social_medical$`Poverty Percent, Age 0-4`

social_medical <- social_medical[,c("fips", "Name", "pov_perc_all", 
                                   "pov_perc_under_18", "pov_perc_under_5",
                                   "Alcohol_Abuse","Autism_Spectrum_Disorders",
                                   "Depression", "Drug_Abuse_Substance_Abuse", 
                                   "Schizophrenia_Other_Psychotic_Disorders",
                                   "rate", "total_pop", "total_jail_pop", 
                                   "total_jail_pretrial")]
social_medical$unemployment <- social_medical$rate
social_medical <- social_medical[,which(!colnames(social_medical) %in% c("rate"))]

write.csv(social_medical, "data_intermediate/social_medical.csv", row.names=F)












