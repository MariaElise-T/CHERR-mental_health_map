library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)
library(lubridate)

setwd("C:/Users/met48/Desktop/V2.1_CHERR-mental_health_data_processing/longitudinal_statewide_data")

################################################################################
# NICS data
################################################################################

NICS_2022 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2022", skip = 4)
NICS_2022 <- NICS_2022[,-which(names(NICS_2022) %in% c("May", "Totals"))]
colnames(NICS_2022) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2022 <- NICS_2022[c(1:55),]
NICS_2022$Year <- 2022
NICS_2022_long <- gather(NICS_2022, month, total, '1':'12', factor_key=TRUE)

NICS_2021 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2021", skip = 4)
NICS_2021 <- NICS_2021[,-which(names(NICS_2021) %in% c("May", "Totals"))]
colnames(NICS_2021) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2021 <- NICS_2021[c(1:55),]
NICS_2021$Year <- 2021
NICS_2021_long <- gather(NICS_2021, month, total, '1':'12', factor_key=TRUE)

NICS_2020 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2020", skip = 4)
NICS_2020 <- NICS_2020[,-which(names(NICS_2020) %in% c("May", "Totals"))]
colnames(NICS_2020) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2020 <- NICS_2020[c(1:55),]
NICS_2020$Year <- 2020
NICS_2020_long <- gather(NICS_2020, month, total, '1':'12', factor_key=TRUE)

NICS_2019 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2019", skip = 4)
NICS_2019 <- NICS_2019[,-which(names(NICS_2019) %in% c("May", "Totals"))]
colnames(NICS_2019) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2019 <- NICS_2019[c(1:55),]
NICS_2019$Year <- 2019
NICS_2019_long <- gather(NICS_2019, month, total, '1':'12', factor_key=TRUE)

NICS_2018 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2018", skip = 3)
NICS_2018 <- NICS_2018[,-which(names(NICS_2018) %in% c("May", "...11", "...17", "Totals"))]
colnames(NICS_2018) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2018 <- NICS_2018[c(1:55),]
NICS_2018$Year <- 2018
NICS_2018_long <- gather(NICS_2018, month, total, '1':'12', factor_key=TRUE)

NICS_2017 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2017", skip = 4)
NICS_2017 <- NICS_2017[,-which(names(NICS_2017) %in% c("May", "Totals"))]
colnames(NICS_2017) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2017 <- NICS_2017[c(1:55),]
NICS_2017$Year <- 2017
NICS_2017_long <- gather(NICS_2017, month, total, '1':'12', factor_key=TRUE)

NICS_2016 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2016", skip = 5)
NICS_2016 <- NICS_2016[,-which(names(NICS_2016) %in% c("Totals"))]
colnames(NICS_2016) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2016 <- NICS_2016[c(1:55),]
NICS_2016$Year <- 2016
NICS_2016_long <- gather(NICS_2016, month, total, '1':'12', factor_key=TRUE)

NICS_2015 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2015", skip = 4)
NICS_2015 <- NICS_2015[,-which(names(NICS_2015) %in% c("May", "Totals"))]
colnames(NICS_2015) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2015 <- NICS_2015[c(1:55),]
NICS_2015$Year <- 2015
NICS_2015_long <- gather(NICS_2015, month, total, '1':'12', factor_key=TRUE)

NICS_2014 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2014", skip = 4)
NICS_2014 <- NICS_2014[,-which(names(NICS_2014) %in% c("May", "Totals"))]
colnames(NICS_2014) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2014 <- NICS_2014[c(1:55),]
NICS_2014$Year <- 2014
NICS_2014_long <- gather(NICS_2014, month, total, '1':'12', factor_key=TRUE)

NICS_2013 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2013", skip = 5)
NICS_2013 <- NICS_2013[,-which(names(NICS_2013) %in% c("Totals"))]
colnames(NICS_2013) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2013 <- NICS_2013[c(1:55),]
NICS_2013$Year <- 2013
NICS_2013_long <- gather(NICS_2013, month, total, '1':'12', factor_key=TRUE)

NICS_2012 <- read_excel("data_raw/Federal_firearms_bans_Dec2021.xlsx", sheet = "BC_2012", skip = 5)
NICS_2012 <- NICS_2012[,-which(names(NICS_2012) %in% c("Totals"))]
colnames(NICS_2012) <- c("State", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
NICS_2012 <- NICS_2012[c(1:55),]
NICS_2012$Year <- 2012
NICS_2012_long <- gather(NICS_2012, month, total, '1':'12', factor_key=TRUE)

NICS_all_long <- as.data.frame(rbind(NICS_2022_long, NICS_2021_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2020_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2019_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2018_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2017_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2016_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2015_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2014_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2013_long))
NICS_all_long <- as.data.frame(rbind(NICS_all_long, NICS_2012_long))
NICS_Texas_long <- NICS_all_long[which(NICS_all_long$State=='Texas'),]

colnames(NICS_Texas_long) <- c("Texas", "Year", "month", "firearms_background_checks")

################################################################################
# k-12 Disciplinary data 
################################################################################

# Import and format raw counts

STATE_disc_2012 <- read.table("data_raw/STATE_summary_12.txt", sep=",",header=TRUE)
STATE_disc_2012$YR12 <- na_if(STATE_disc_2012$YR12, -99999999)
STATE_disc_2012$endYear <- 2012
STATE_disc_2012$schoolYear <- "2011-2012"
STATE_disc_2012 <- STATE_disc_2012[,c(2:7)]
colnames(STATE_disc_2012) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2013 <- read.table("data_raw/STATE_summary_13.txt", sep=",",header=TRUE)
STATE_disc_2013$YR13 <- na_if(STATE_disc_2013$YR13, -99999999)
STATE_disc_2013$endYear <- 2013
STATE_disc_2013$schoolYear <- "2012-2013"
STATE_disc_2013 <- STATE_disc_2013[,c(2:7)]
STATE_disc_2013 <- STATE_disc_2013[-c(36, 44),]
colnames(STATE_disc_2013) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2014 <- read.table("data_raw/STATE_summary_14.txt", sep=",",header=TRUE)
STATE_disc_2014$YR14 <- na_if(STATE_disc_2014$YR14, -99999999)
STATE_disc_2014$endYear <- 2014
STATE_disc_2014$schoolYear <- "2013-2014"
STATE_disc_2014 <- STATE_disc_2014[,c(2:7)]
colnames(STATE_disc_2014) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2015 <- read.table("data_raw/STATE_summary_15.txt", sep=",",header=TRUE)
STATE_disc_2015$YR15 <- na_if(STATE_disc_2015$YR15, -99999999)
STATE_disc_2015$endYear <- 2015
STATE_disc_2015$schoolYear <- "2014-2015"
STATE_disc_2015 <- STATE_disc_2015[,c(2:7)]
colnames(STATE_disc_2015) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2016 <- read.table("data_raw/STATE_summary_16.txt", sep=",",header=TRUE)
STATE_disc_2016$YR16 <- na_if(STATE_disc_2016$YR16, -99999999)
STATE_disc_2016$endYear <- 2016
STATE_disc_2016$schoolYear <- "2015-2016"
STATE_disc_2016 <- STATE_disc_2016[,c(2:7)]
colnames(STATE_disc_2016) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2017 <- read.table("data_raw/STATE_summary_17.csv", sep=",", header=TRUE)
STATE_disc_2017$YR17 <- na_if(STATE_disc_2017$YR17, -999)
STATE_disc_2017$endYear <- 2017
STATE_disc_2017$schoolYear <- "2016-2017"
STATE_disc_2017 <- STATE_disc_2017[,c(2:7)]
colnames(STATE_disc_2017) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2018 <- read.table("data_raw/STATE_summary_18.csv", skip=6, sep=",", nrows=168, header=TRUE)
STATE_disc_2018$YR18 <- na_if(STATE_disc_2018$YR18, -999)
STATE_disc_2018$endYear <- 2018
STATE_disc_2018$schoolYear <- "2017-2018"
STATE_disc_2018 <- STATE_disc_2018[,c(2:7)]
colnames(STATE_disc_2018) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2019 <- read.table("data_raw/STATE_summary_19.csv", skip=6, sep=",", nrows=172, header=TRUE)
STATE_disc_2019$YR19 <- na_if(STATE_disc_2019$YR19, -999)
STATE_disc_2019$endYear <- 2019
STATE_disc_2019$schoolYear <- "2018-2019"
STATE_disc_2019 <- STATE_disc_2019[,c(2:7)]
colnames(STATE_disc_2019) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2020 <- read.table("data_raw/STATE_summary_20.csv", skip=6, sep=",", nrows=167, header=TRUE)
STATE_disc_2020$YR20 <- na_if(STATE_disc_2020$YR20, -999)
STATE_disc_2020$endYear <- 2020
STATE_disc_2020$schoolYear <- "2019-2020"
STATE_disc_2020 <- STATE_disc_2020[,c(2:7)]
colnames(STATE_disc_2020) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2021 <- read.table("data_raw/STATE_summary_21.csv", skip=6, sep=",", nrows=163, header=TRUE)
STATE_disc_2021$YR21 <- na_if(STATE_disc_2021$YR21, -999)
STATE_disc_2021$endYear <- 2021
STATE_disc_2021$schoolYear <- "2020-2021"
STATE_disc_2021 <- STATE_disc_2021[,c(2:7)]
colnames(STATE_disc_2021) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_2022 <- read.table("data_raw/STATE_summary_22.csv", skip=6, sep=",", nrows=168, header=TRUE)
STATE_disc_2022$YR22 <- na_if(STATE_disc_2022$YR22, -999)
STATE_disc_2022$endYear <- 2022
STATE_disc_2022$schoolYear <- "2021-2022"
STATE_disc_2022 <- STATE_disc_2022[,c(2:7)]
colnames(STATE_disc_2022) <- c("SECTION", "HEADING", "HEADING.NAME", "COUNT", "endYear", "schoolYear")

STATE_disc_merged <- as.data.frame(rbind(STATE_disc_2012, STATE_disc_2013))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2014))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2015))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2016))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2017))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2018))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2019))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2020))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2021))
STATE_disc_merged <- as.data.frame(rbind(STATE_disc_merged, STATE_disc_2022))

STATE_disc_merged$HEADING <- paste(STATE_disc_merged$HEADING, STATE_disc_merged$HEADING.NAME, sep=" - ")

STATE_disc_merge_wide <- spread(STATE_disc_merged[,c(2,4,5,6)], HEADING, COUNT)
STATE_disc_merge_wide$month <- 1
STATE_disc_merge_wide_small <- STATE_disc_merge_wide[, (names(STATE_disc_merge_wide) %in% c("endYear","schoolYear","A01 - STATE CUMULATIVE YEAR END ENROLLMENT", "A02 - STATE DISCIPLINE POPULATION", "A03 - STATE DISCIPLINE RECORD COUNT", "G02 - 02-CONDUCT PUNISHABLE AS A FELONY", "G04 - 04-CONTROLLED SUBSTANCE/DRUGS", "G05 - 05-ALCOHOL VIOLATION", "G11 - 11-FIREARM OR HANDGUN VIOLATION", "G11 - 11-FIREARM VIOLATION", "G27 - 27-ASSAULT-DISTRICT EMPLOYEE", "G28 - 28-ASSAULT-NONDISTRICT EMPLOYEE", "G29 - 29-AGG ASSAULT-DISTRICT EMPLOYEE", "G30 - 30-AGG ASSAULT-NONDIST EMPLOYEE", "G32 - 32-SEXUAL ASSAULT-NONDIST EMPLOYE", "G34 - 34-SCHOOL-RELATED GANG VIOLENCE", "G36 - 36-FELONY CONTROLLED SUBS VIOLAT", "G41 - 41-FIGHTING/MUTUAL COMBAT", "month"))]
STATE_disc_merge_wide_small[1:4,"G11 - 11-FIREARM OR HANDGUN VIOLATION"] <- STATE_disc_merge_wide_small[1:4,"G11 - 11-FIREARM VIOLATION"]
STATE_disc_merge_wide_small <- STATE_disc_merge_wide_small[, (!names(STATE_disc_merge_wide_small) %in% c("G11 - 11-FIREARM VIOLATION"))]

################################################################################
# DEA NFLIS seizures
################################################################################

nflis_export_texas_2012 <- read.csv("data_raw/nflis-export_texas_2012.csv")
nflis_export_texas_2012$year <- 2012
nflis_export_texas_2013 <- read.csv("data_raw/nflis-export_texas_2013.csv")
nflis_export_texas_2013$year <- 2013
nflis_export_texas_2014 <- read.csv("data_raw/nflis-export_texas_2014.csv")
nflis_export_texas_2014$year <- 2014
nflis_export_texas_2015 <- read.csv("data_raw/nflis-export_texas_2015.csv")
nflis_export_texas_2015$year <- 2015
nflis_export_texas_2016 <- read.csv("data_raw/nflis-export_texas_2016.csv")
nflis_export_texas_2016$year <- 2016
nflis_export_texas_2017 <- read.csv("data_raw/nflis-export_texas_2017.csv")
nflis_export_texas_2017$year <- 2017
nflis_export_texas_2018 <- read.csv("data_raw/nflis-export_texas_2018.csv")
nflis_export_texas_2018$year <- 2018
nflis_export_texas_2019 <- read.csv("data_raw/nflis-export_texas_2019.csv")
nflis_export_texas_2019$year <- 2019
nflis_export_texas_2020 <- read.csv("data_raw/nflis-export_texas_2020.csv")
nflis_export_texas_2020$year <- 2020
nflis_export_texas_2021 <- read.csv("data_raw/nflis-export_texas_2021.csv")
nflis_export_texas_2021$year <- 2021
nflis_export_texas_2022 <- read.csv("data_raw/nflis-export_texas_2022.csv")
nflis_export_texas_2022$year <- 2022

nflis_texas_merged <- as.data.frame(rbind(nflis_export_texas_2012, nflis_export_texas_2013))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2014))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2015))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2016))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2017))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2018))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2019))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2020))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2021))
nflis_texas_merged <- as.data.frame(rbind(nflis_texas_merged, nflis_export_texas_2022))

nflis_texas_merged_wide <- spread(nflis_texas_merged[,c(1,4,6)], BASE_DESCRIPTION, PERCENT_TOTAL)
nflis_texas_merged_wide$month <- 1

################################################################################
# 988 Data
################################################################################

july21_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "July-21")
colnames(july21_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
july21_988$month <- 7
july21_988$year <- 2021

august21_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "August-21")
colnames(august21_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
august21_988$month <- 8
august21_988$year <- 2021  

september21_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "September-21")
colnames(september21_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
september21_988$month <- 09
september21_988$year <- 2021  

october21_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "October-21")
colnames(october21_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
october21_988$month <- 10
october21_988$year <- 2021  

november21_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "November-21")
colnames(november21_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
november21_988$month <- 11
november21_988$year <- 2021  

december21_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "December-21")
colnames(december21_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
december21_988$month <- 12
december21_988$year <- 2021  

january22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "January-22")
colnames(january22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
january22_988$month <- 01
january22_988$year <- 2022  

february22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "February-22")
colnames(february22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
february22_988$month <- 02
february22_988$year <- 2022  

march22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "March-22")
colnames(march22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
march22_988$month <- 03
march22_988$year <- 2022  

april22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "April-22")
colnames(april22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
april22_988$month <- 04
april22_988$year <- 2022  

may22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "May-22")
colnames(may22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
may22_988$month <- 05
may22_988$year <- 2022  

june22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "June-22")
colnames(june22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
june22_988$month <- 06
june22_988$year <- 2022  

july22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "July-22")
colnames(july22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
july22_988$month <- 07
july22_988$year <- 2022  

august22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "August-22")
colnames(august22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
august22_988$month <- 08
august22_988$year <- 2022  

september22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "September-22")
colnames(september22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
september22_988$month <- 09
september22_988$year <- 2022  

october22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "October-22")
colnames(october22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
october22_988$month <- 10
october22_988$year <- 2022  

november22_988 <- read_excel("data_raw/988_national_reports.xlsx", sheet = "November-22")
colnames(november22_988) <- c("State", "Routed", "Received", "Answered_In_State", "In_state_answer_rate", "Abandoned_in_state", "Flowout_to_backup", "ASA_in_state", "Avg_talk_time_in_state")
november22_988$month <- 11
november22_988$year <- 2022  

all_988_merged <- as.data.frame(rbind(july21_988, august21_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, september21_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, october21_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, november21_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, december21_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, january22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, february22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, march22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, april22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, may22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, june22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, july22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, august22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, september22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, october22_988))
all_988_merged <- as.data.frame(rbind(all_988_merged, november22_988))

################################################################################
# Merge
################################################################################

TX_longitudinal_merge <- merge(NICS_Texas_long, STATE_disc_merge_wide_small, by.x=c("Year", "month"), by.y=c("endYear", "month"), all=T)
TX_longitudinal_merge <- merge(TX_longitudinal_merge, nflis_texas_merged_wide, by.x=c("Year", "month"), by.y=c("year", "month"), all=T)
TX_longitudinal_merge <- merge(TX_longitudinal_merge, all_988_merged, by.x=c("Year", "month"), by.y=c("year", "month"), all=T)

write.csv(TX_longitudinal_merge, "TX_longitudinal_merge.csv", row.names=F)
