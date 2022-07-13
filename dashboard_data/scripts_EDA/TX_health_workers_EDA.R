# Exploratory data for Texas health workers

library(ggplot2)

#setwd('..')
setwd("C:/Users/met48/Desktop/V1.1_CHERR-mental_health_data_processing/dashboard_data")

TX_health_workers_2020 <- read.csv("data-intermediate/TX_health_workers_2020.csv")

colnames(TX_health_workers_2020)

# Licensed chemical dependency counselors

ggplot(TX_health_workers_2020, aes(x=as.factor(RUCC_2013), y=Ratio.of.LCDCs.to.100.000.Population))+
  geom_boxplot()

ggplot(TX_health_workers_2020, aes(x=as.factor(NCHS_2013), y=Ratio.of.LCDCs.to.100.000.Population))+
  geom_boxplot()

ggplot(TX_health_workers_2020, aes(x=as.factor(UIC_2013), y=Ratio.of.LCDCs.to.100.000.Population))+
  geom_boxplot()

# Licensed social workers

LCSWs <- TX_health_workers_2020[,c("County", "Ratio.of.LCSWs.to.100.000.Population", "RUCC_2013", "NCHS_2013", "UIC_2013")]
LCSWs$Role <- "Clinical"
colnames(LCSWs) <- c("County", "Count.per.100k", "RUCC_2013", "NCHS_2013", "UIC_2013", "Role")

LBSWs <- TX_health_workers_2020[,c("County", "Ratio.of.LBSWs.to.100.000.Population", "RUCC_2013", "NCHS_2013", "UIC_2013")]
LBSWs$Role <- "Baccalaureate"
colnames(LBSWs) <- c("County", "Count.per.100k", "RUCC_2013", "NCHS_2013", "UIC_2013", "Role")

LMSWs <- TX_health_workers_2020[,c("County", "Ratio.of.LMSWs.to.100.000.Population", "RUCC_2013", "NCHS_2013", "UIC_2013")]
LMSWs$Role <- "Master"
colnames(LMSWs) <- c("County", "Count.per.100k", "RUCC_2013", "NCHS_2013", "UIC_2013", "Role")

TX_SWs <- rbind(LCSWs, LBSWs)
TX_SWs <- as.data.frame(rbind(TX_SWs, LMSWs))

ggplot(TX_SWs, aes(x=as.factor(RUCC_2013), y=Count.per.100k, color=Role))+
  geom_boxplot()

ggplot(TX_SWs, aes(x=as.factor(NCHS_2013), y=Count.per.100k, color=Role))+
  geom_boxplot()

ggplot(TX_SWs, aes(x=as.factor(UIC_2013), y=Count.per.100k, color=Role))+
  geom_boxplot()

# Liscensed professional counselors

ggplot(TX_health_workers_2020, aes(x=as.factor(RUCC_2013), y=Ratio.of.LPCs.to.100.000.Population))+
  geom_boxplot()

ggplot(TX_health_workers_2020, aes(x=as.factor(NCHS_2013), y=Ratio.of.LPCs.to.100.000.Population))+
  geom_boxplot()

ggplot(TX_health_workers_2020, aes(x=as.factor(UIC_2013), y=Ratio.of.LPCs.to.100.000.Population))+
  geom_boxplot()




