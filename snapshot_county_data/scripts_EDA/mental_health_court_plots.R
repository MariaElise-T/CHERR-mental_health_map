library(readxl)
library(ggplot2)

MH_Court_Cases_2017 <- read_excel("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data/data_raw/Mental_Health_Court_Cases.xlsx", sheet = "2017")
MH_Court_Cases_2018 <- read_excel("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data/data_raw/Mental_Health_Court_Cases.xlsx", sheet = "2018")
MH_Court_Cases_2019 <- read_excel("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data/data_raw/Mental_Health_Court_Cases.xlsx", sheet = "2019")
MH_Court_Cases_2020 <- read_excel("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data/data_raw/Mental_Health_Court_Cases.xlsx", sheet = "2020")
MH_Court_Cases_2021 <- read_excel("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data/data_raw/Mental_Health_Court_Cases.xlsx", sheet = "2021")
MH_Court_Cases_2022 <- read_excel("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data/data_raw/Mental_Health_Court_Cases.xlsx", sheet = "2022")

MH_Court_Cases_2017$year = 2017
MH_Court_Cases_2018$year = 2018
MH_Court_Cases_2019$year = 2019
MH_Court_Cases_2020$year = 2020
MH_Court_Cases_2021$year = 2021
MH_Court_Cases_2022$year = 2022

MH_Court_Cases <- as.data.frame(rbind(MH_Court_Cases_2017, MH_Court_Cases_2018))
MH_Court_Cases <- as.data.frame(rbind(MH_Court_Cases, MH_Court_Cases_2019))
MH_Court_Cases <- as.data.frame(rbind(MH_Court_Cases, MH_Court_Cases_2020))
MH_Court_Cases <- as.data.frame(rbind(MH_Court_Cases, MH_Court_Cases_2021))
MH_Court_Cases <- as.data.frame(rbind(MH_Court_Cases, MH_Court_Cases_2022))

ggplot(MH_Court_Cases[which(MH_Court_Cases$County=="Travis" & MH_Court_Cases$year != 2022),], aes(x=year, y=`Temporary Mental Health Services - New Application`))+
  geom_line(stat="identity")

library(data.table)

MH_Court_Cases_long <- melt(setDT(MH_Court_Cases), id.vars = c("year","County"), variable.name = "Metric")


ggplot(MH_Court_Cases_long[which(MH_Court_Cases_long$County=="Hays" & MH_Court_Cases_long$year != 2022),], aes(x=year, y=value, fill=Metric))+
  geom_bar(stat="identity", position=position_dodge())+
  theme_bw()+
  ggtitle("Hays County, 2017-2021")+
  ylab("Yearly count")

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                `Temporary Mental Health Services - New Application`~year,
                                FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)

temp_MH_services_app_agg <- aggregate(data=MH_Court_Cases,
                                      `Temporary Mental Health Services - New Application`~year,
                                      FUN = sum)
