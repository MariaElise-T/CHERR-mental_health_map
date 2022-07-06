library(readxl)
library(ggplot2)
library(RColorBrewer)

SSDB_incident <- read_excel("Desktop/SSDB_Raw_Data.xlsx", sheet = "INCIDENT")
SSDB_shooter <- read_excel("Desktop/SSDB_Raw_Data.xlsx", sheet = "SHOOTER")
SSDB_victim <- read_excel("Desktop/SSDB_Raw_Data.xlsx", sheet = "VICTIM")
SSDB_weapon <- read_excel("Desktop/SSDB_Raw_Data.xlsx", sheet = "WEAPON")

SSDB_merged <- merge(SSDB_incident, SSDB_shooter, by.x="Incident_ID", by.y="incidentid", all=T)
SSDB_merged <- merge(SSDB_merged, SSDB_weapon, by.x="Incident_ID", by.y="incidentid")

# Raw incident counts

pdf("school_shooting_plots_counts.pdf")

ggplot(as.data.frame(table(SSDB_merged$Quarter)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Quarter")

ggplot(as.data.frame(table(SSDB_merged$School_Level)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("School Level")

ggplot(as.data.frame(table(SSDB_merged$Location)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Location")

ggplot(as.data.frame(table(SSDB_merged$Location_Type)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Location Type")

ggplot(as.data.frame(table(SSDB_merged$During_School)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("During_School")

ggplot(as.data.frame(table(SSDB_merged$Situation)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Situation")

ggplot(as.data.frame(table(SSDB_merged$Targets)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Targets")

ggplot(as.data.frame(table(SSDB_merged$Accomplice)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Accomplice")

ggplot(as.data.frame(table(SSDB_merged$Bullied)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Bullied")

ggplot(as.data.frame(table(SSDB_merged$Gang_Related)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Gang_Related")

ggplot(as.data.frame(table(SSDB_merged$Preplanned)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Preplanned")

ggplot(as.data.frame(table(SSDB_merged$gender)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Gender")

ggplot(as.data.frame(table(SSDB_merged$race)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Race")

ggplot(as.data.frame(table(SSDB_merged$schoolaffiliation)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("schoolaffiliation")

ggplot(as.data.frame(table(SSDB_merged$shooteroutcome)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("shooteroutcome")

ggplot(as.data.frame(table(SSDB_merged$weaponcaliber)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("weaponcaliber")

ggplot(as.data.frame(table(SSDB_merged$weapontype)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("weapontype")

ggplot(SSDB_merged, aes(x=Shots_Fired))+
  geom_bar()

ggplot(SSDB_merged, aes(x=as.numeric(age)))+
  geom_bar()

dev.off()

SSDB_casualties <- merge(SSDB_merged, SSDB_victim, by.x="Incident_ID", by.y="incidentid", all.y = T)

pdf("school_shooting_plots_casualties.pdf")

ggplot(as.data.frame(table(SSDB_casualties$Quarter)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Quarter")

ggplot(as.data.frame(table(SSDB_casualties$School_Level)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("School Level")

ggplot(as.data.frame(table(SSDB_casualties$Location)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Location")

ggplot(as.data.frame(table(SSDB_casualties$Location_Type)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Location Type")

ggplot(as.data.frame(table(SSDB_casualties$During_School)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("During_School")

ggplot(as.data.frame(table(SSDB_casualties$Situation)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Situation")

ggplot(as.data.frame(table(SSDB_casualties$Targets)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Targets")

ggplot(as.data.frame(table(SSDB_casualties$Accomplice)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Accomplice")

ggplot(as.data.frame(table(SSDB_casualties$Bullied)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Bullied")

ggplot(as.data.frame(table(SSDB_casualties$Gang_Related)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Gang_Related")

ggplot(as.data.frame(table(SSDB_casualties$Preplanned)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Preplanned")

ggplot(as.data.frame(table(SSDB_casualties$gender.x)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Gender")

ggplot(as.data.frame(table(SSDB_casualties$race.x)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Race")

ggplot(as.data.frame(table(SSDB_casualties$schoolaffiliation.x)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("schoolaffiliation")

ggplot(as.data.frame(table(SSDB_casualties$shooteroutcome)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("shooteroutcome")

ggplot(as.data.frame(table(SSDB_casualties$weaponcaliber)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("weaponcaliber")

ggplot(as.data.frame(table(SSDB_casualties$weapontype)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("weapontype")

ggplot(SSDB_casualties, aes(x=Shots_Fired))+
  geom_bar()

ggplot(SSDB_casualties, aes(x=as.numeric(age.x)))+
  geom_bar()

dev.off()

SSDB_fatalities <- SSDB_casualties[which(SSDB_casualties$injury.y=='Fatal'),]

pdf("school_shooting_plots_fatalities.pdf")

ggplot(as.data.frame(table(SSDB_fatalities$Quarter)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Quarter")

ggplot(as.data.frame(table(SSDB_fatalities$School_Level)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("School Level")

ggplot(as.data.frame(table(SSDB_fatalities$Location)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Location")

ggplot(as.data.frame(table(SSDB_fatalities$Location_Type)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Location Type")

ggplot(as.data.frame(table(SSDB_fatalities$During_School)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("During_School")

ggplot(as.data.frame(table(SSDB_fatalities$Situation)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Situation")

ggplot(as.data.frame(table(SSDB_fatalities$Targets)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Targets")

ggplot(as.data.frame(table(SSDB_fatalities$Accomplice)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Accomplice")

ggplot(as.data.frame(table(SSDB_fatalities$Bullied)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Bullied")

ggplot(as.data.frame(table(SSDB_fatalities$Gang_Related)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Gang_Related")

ggplot(as.data.frame(table(SSDB_fatalities$Preplanned)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Preplanned")

ggplot(as.data.frame(table(SSDB_fatalities$gender.x)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set1")+
  ggtitle("Gender")

ggplot(as.data.frame(table(SSDB_fatalities$race.x)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("Race")

ggplot(as.data.frame(table(SSDB_fatalities$schoolaffiliation.x)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("schoolaffiliation")

ggplot(as.data.frame(table(SSDB_fatalities$shooteroutcome)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("shooteroutcome")

ggplot(as.data.frame(table(SSDB_fatalities$weaponcaliber)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("weaponcaliber")

ggplot(as.data.frame(table(SSDB_fatalities$weapontype)), aes(x="", y=Freq, fill=Var1)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()+
  ggtitle("weapontype")

ggplot(SSDB_fatalities, aes(x=Shots_Fired))+
  geom_bar()

ggplot(SSDB_fatalities, aes(x=as.numeric(age.x)))+
  geom_bar()

dev.off()
