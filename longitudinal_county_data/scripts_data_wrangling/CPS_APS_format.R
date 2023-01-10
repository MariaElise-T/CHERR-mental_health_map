library(tidyr)

setwd("C:/Users/met48/Desktop/V2.1_CHERR-mental_health_data_processing/longitudinal_county_data")

CPS_abuse_neglect <- read.csv("data_raw/CPI_3.8_Abuse_Neglect_Investigations_-_Alleged_and_Confirmed_Victims_By_County_FY2012-FY2021.csv")
CPS_abuse_neglect <- CPS_abuse_neglect[,!names(CPS_abuse_neglect) %in% c("Region")]
CPS_abuse_neglect_wide <- spread(CPS_abuse_neglect, Confirmed.Victims, Victims)
colnames(CPS_abuse_neglect_wide) <- c("Fiscal.Year", "County", "CPS_confirmed_victim", "CPS_unconfirmed_victim")

CPS_removals <- read.csv("data_raw/CPS_2.1_Removals_-_by_County_FY2012-2021.csv")
CPS_removals <- CPS_removals[,!names(CPS_removals) %in% c("Region")]
CPS_removals_wide <- spread(CPS_removals, Removal.Stage, Removals)
colnames(CPS_removals_wide) <- c("Fiscal.Year", "County", "CPS_family_preservation_removals", "CPS_investigation_removals")

CPS_custody_of_DFPS <- read.csv("data_raw/CPS_2.3_Children_In_DFPS_Legal_Responsibility_by_County_FY2012-2021.csv")
CPS_custody_of_DFPS <- CPS_custody_of_DFPS[,!names(CPS_custody_of_DFPS) %in% c("Region")]

APS_at_risk <- read.csv("data_raw/APS_1.1_Texas_Adult_Populations_at_Risk_by_County_FY2012-FY2021.csv")
APS_at_risk <- APS_at_risk[,!names(APS_at_risk) %in% c("Region")]
colnames(APS_at_risk) <- c("Fiscal.Year", "County", "Adult_disabled_18_64_pop", "Adult_disabled_18_64_perc", "Adult_65_over_pop", "Adult_65_over_perc", "APS_total_county_pop")

APS_activity <- read.csv("data_raw/APS_4.1_Services__Activity_by_County_FY2012-2021.csv")
APS_activity <- APS_activity[,!names(APS_activity) %in% c("Region")]
colnames(APS_activity) <- c("Fiscal.Year", "County", "APS_clients", "APS_service_stages")

APS_recidivism <- read.csv("data_raw/APS_5.2_Outcomes__Recidivism_by_County_FY2012-2021.csv")
APS_recidivism <- APS_recidivism[,!names(APS_recidivism) %in% c("Region")]
colnames(APS_recidivism) <- c("Fiscal.Year", "County", "APS_alleged_victims_in_repeat_invest", "APS_alleged_victims_in_initial_invest", "APS_recidivism")

CPS_APS_merge <- merge(CPS_abuse_neglect_wide, CPS_removals_wide, by=c("Fiscal.Year", "County"), all=T)
CPS_APS_merge <- merge(CPS_APS_merge, CPS_custody_of_DFPS, by=c("Fiscal.Year", "County"), all=T)
CPS_APS_merge <- merge(CPS_APS_merge, APS_at_risk, by=c("Fiscal.Year", "County"), all=T)
CPS_APS_merge <- merge(CPS_APS_merge, APS_activity, by=c("Fiscal.Year", "County"), all=T)
CPS_APS_merge <- merge(CPS_APS_merge, APS_recidivism, by=c("Fiscal.Year", "County"), all=T)

write.csv(CPS_APS_merge, "CPS_APS_merge.csv", row.names=F)
