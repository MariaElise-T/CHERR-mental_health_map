library(sp)
library(rgeos)
library(rgdal)
library(maptools)
library(dplyr)
library(leaflet)
library(scales)

### Begin data prep
# Grab air/water quality data from the EPA
url = "https://data.cdc.gov/api/views/cjae-szjv/rows.csv?accessType=DOWNLOAD"
dat <- read.csv(url, stringsAsFactors = FALSE)
# Colnames tolower
names(dat) <- tolower(names(dat))
dat$countyname <- tolower(dat$countyname)
# Wide data set, subset only what we need.
county_dat <- subset(dat, measureid == "296", 
                     select = c("reportyear","countyfips","statename", "countyname", "value", "unitname")) %>%
  subset(reportyear==2011, select = c("countyfips", "value"))
# Rename columns to make for a clean df merge later.
colnames(county_dat) <- c("GEOID", "airqlty")
# Have to add leading zeos to any FIPS code that's less than 5 digits long to get a good match.
# I'm cheating by using C code. sprintf will work as well.
county_dat$GEOID <- formatC(county_dat$GEOID, width = 5, format = "d", flag = "0")
### End data prep


us.map <- readOGR(dsn = "/Users/maria/Desktop/dashboard_data/tl_2021_us_county", layer = "tl_2021_us_county")
us.map <- us.map[us.map$STATEFP %in% c("48"),]
us.map <- us.map[us.map$NAME %in% c("Bexar", "Comal", "Hays", "Travis", 
                                    "Williamson", "Bastrop", "Caldwell",
                                    "Guadalupe", "Kendall", "Blanco", 
                                    "Burnet"),]
leafmap <- merge(us.map, county_dat, by=c("GEOID"))

# Format popup data for leaflet map.

popup_dat <- paste0("<strong>County: </strong>", 
                    leafmap$NAME)

pal <- colorQuantile("YlOrRd", NULL, n = 9)

# Render final map in leaflet.

leaflet(data = leafmap) %>% addTiles() %>%
  addPolygons(fillColor = ~pal(airqlty), 
              fillOpacity = 0.8, 
              color = "#BDBDC3", 
              weight = 1,
              popup = popup_dat)


