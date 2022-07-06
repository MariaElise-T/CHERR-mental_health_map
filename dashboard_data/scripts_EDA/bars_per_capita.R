# Mental Health Dashboard Data Formatting

library(stringr)

# Get Column Names and DF Shape 

demo_MH_dataset <- read.csv("~/Desktop/demo_MH_dataset.csv")

# Import county pops

county_pops <- read.csv("~/Desktop/co-est2021-alldata.csv")
county_pops <- county_pops[which(county_pops$STATE==48 & county_pops$COUNTY != 0,),]
county_pops$FIPS <- paste(str_pad(county_pops$STATE, 2, side = c("left"), pad = "0"), str_pad(county_pops$COUNTY, 3, side = c("left"), pad = "0"), sep='')
county_pops <- county_pops[,c('ESTIMATESBASE2020', 'FIPS', 'CTYNAME')]

# Import bars per county

census_2020_bars_by_county <- read.csv("~/Desktop/census_2020_bars_by_county.csv")
census_2020_bars_by_county$GEO_ID <- str_sub(census_2020_bars_by_county$GEO_ID, -5)
census_2020_bars_by_county = census_2020_bars_by_county[which(census_2020_bars_by_county$EMPSZES_LABEL == 'All establishments'),]
census_2020_bars_by_county = census_2020_bars_by_county[,c("GEO_ID", "ESTAB")]

# Merge population and bars DFs

pop_bars <- merge(census_2020_bars_by_county, county_pops, by.x='GEO_ID', by.y='FIPS', all.y=T)
pop_bars$bars_per_capita = 100000*as.numeric(pop_bars$ESTAB)/pop_bars$ESTIMATESBASE2020
write.csv(pop_bars, "pop_bars.csv", row.names=F)

