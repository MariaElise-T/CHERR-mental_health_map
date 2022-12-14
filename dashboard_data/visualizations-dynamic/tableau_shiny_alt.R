library(shiny)
library(leaflet)
library(sp)
library(rgeos)
library(rgdal)
library(maptools)
library(dplyr)
library(scales)
library(ggplot2)

#setwd('..')
setwd("C:/Users/met48/Desktop/V1.3_CHERR-mental_health_data_processing/dashboard_data")

data_merged <- read.csv("dashboard_data_v_1_3.csv")

us.map <- readOGR(dsn = "C:/Users/met48/Desktop/tl_2021_us_county", layer = "tl_2021_us_county")
us.map <- us.map[us.map$STATEFP %in% c("48"),]
leafmap <- merge(us.map, data_merged, by.x="GEOID", by.y="fips")

# Format popup data for leaflet map.

pal <- colorQuantile("YlOrRd", NULL, n = 9)

ui <- fluidPage(
  titlePanel("I-35 Corridor Mental Health Dashboard V1.1"),
  sidebarLayout(
    sidebarPanel(
      selectInput("x_var", "X Axis:",
                  choices = c("pov_perc_all",                                          
                              "pov_perc_under_18",                                     
                              "Alcohol_Abuse",                                         
                              "Autism_Spectrum_Disorders",                             
                              "Depression",                                            
                              "Drug_Abuse_Substance_Abuse",                            
                              "Schizophrenia_Other_Psychotic_Disorders",               
                              "total_pop",                                             
                              "total_jail_pop",                                        
                              "total_jail_pretrial",                                   
                              "unemployment",                                          
                              "X2020.Total.Population",                                
                              "X2020.LCDC.Total",                                      
                              "Ratio.of.LCDCs.to.100.000.Population",                  
                              "X2020.LCSW.Total",                                      
                              "Ratio.of.LCSWs.to.100.000.Population",                  
                              "X2020.LPC.Total",                                       
                              "Ratio.of.LPCs.to.100.000.Population",                   
                              "X2020.LBSW.Total",                                      
                              "Ratio.of.LBSWs.to.100.000.Population",                  
                              "X2020.LMSW.Total",                                      
                              "Ratio.of.LMSWs.to.100.000.Population",                  
                              "X2020.Primary.Care.Physician.Total",                    
                              "Ratio.of.Primary.Care.Physicians.to.100.000.Population",                              
                              "RUCC_2013",                                             
                              "State",                                                 
                              "NCHS_2013",                                             
                              "UIC_2013",                                              
                              "opioid_per_100",                                        
                              "alc_est_per_capita",                                    
                              "vet_percent_2020",                                      
                              "percent_uninsured",                                     
                              "Temp_MH_Services_NewApp_2020",                          
                              "Ext_MH_Services_NewApp_2020",                           
                              "Modification_NewApp_2020",                              
                              "Auth_Meds_NewApp_2020",                                 
                              "Temp_MH_Services_Hearing_2020",                         
                              "Ext_MH_Services_Hearing_2020",                          
                              "Modification_Hearing_2020",                             
                              "Auth_Meds_Hearing_2020",                                
                              "Temp_MH_Services_NewApp_2020_per100k",                  
                              "Ext_MH_Services_NewApp_2020_per100k",                   
                              "Modification_NewApp_2020_per100k",                      
                              "Auth_Meds_NewApp_2020_per100k",                         
                              "Temp_MH_Services_Hearing_2020_per100k",                 
                              "Ext_MH_Services_Hearing_2020_per100k",                  
                              "Modification_Hearing_2020_per100k",                     
                              "Auth_Meds_Hearing_2020_per100k",                        
                              "X2020.Psychiatrist.Total",                              
                              "Ratio.of.Psychiatrists.to.100.000.Population",          
                              "Total Traffic Fatalities",                              
                              "Total Traffic Fatalities BAC gt 08",                    
                              "Percent Traffic Fatalities BAC gt 08",                  
                              "Traffic_Fatalities_per_100k")),
      selectInput("y_var", "Y Axis:",
                  choices = c("pov_perc_all",                                          
                              "pov_perc_under_18",                                     
                              "Alcohol_Abuse",                                         
                              "Autism_Spectrum_Disorders",                             
                              "Depression",                                            
                              "Drug_Abuse_Substance_Abuse",                            
                              "Schizophrenia_Other_Psychotic_Disorders",               
                              "total_pop",                                             
                              "total_jail_pop",                                        
                              "total_jail_pretrial",                                   
                              "unemployment",                                          
                              "X2020.Total.Population",                                
                              "X2020.LCDC.Total",                                      
                              "Ratio.of.LCDCs.to.100.000.Population",                  
                              "X2020.LCSW.Total",                                      
                              "Ratio.of.LCSWs.to.100.000.Population",                  
                              "X2020.LPC.Total",                                       
                              "Ratio.of.LPCs.to.100.000.Population",                   
                              "X2020.LBSW.Total",                                      
                              "Ratio.of.LBSWs.to.100.000.Population",                  
                              "X2020.LMSW.Total",                                      
                              "Ratio.of.LMSWs.to.100.000.Population",                  
                              "X2020.Primary.Care.Physician.Total",                    
                              "Ratio.of.Primary.Care.Physicians.to.100.000.Population",                              
                              "RUCC_2013",                                             
                              "State",                                                 
                              "NCHS_2013",                                             
                              "UIC_2013",                                              
                              "opioid_per_100",                                        
                              "alc_est_per_capita",                                    
                              "vet_percent_2020",                                      
                              "percent_uninsured",                                     
                              "Temp_MH_Services_NewApp_2020",                          
                              "Ext_MH_Services_NewApp_2020",                           
                              "Modification_NewApp_2020",                              
                              "Auth_Meds_NewApp_2020",                                 
                              "Temp_MH_Services_Hearing_2020",                         
                              "Ext_MH_Services_Hearing_2020",                          
                              "Modification_Hearing_2020",                             
                              "Auth_Meds_Hearing_2020",                                
                              "Temp_MH_Services_NewApp_2020_per100k",                  
                              "Ext_MH_Services_NewApp_2020_per100k",                   
                              "Modification_NewApp_2020_per100k",                      
                              "Auth_Meds_NewApp_2020_per100k",                         
                              "Temp_MH_Services_Hearing_2020_per100k",                 
                              "Ext_MH_Services_Hearing_2020_per100k",                  
                              "Modification_Hearing_2020_per100k",                     
                              "Auth_Meds_Hearing_2020_per100k",                        
                              "X2020.Psychiatrist.Total",                              
                              "Ratio.of.Psychiatrists.to.100.000.Population",          
                              "Total Traffic Fatalities",                              
                              "Total Traffic Fatalities BAC gt 08",                    
                              "Percent Traffic Fatalities BAC gt 08",                  
                              "Traffic_Fatalities_per_100k"))
    ),
    mainPanel(plotOutput(outputId = "scatterplot", height = "400px", width="400px"),
              leafletOutput(outputId = "mymap_X", height = "400px", width="400px"),
              leafletOutput(outputId = "mymap_Y", height = "400px", width="400px")
    )
  )
)

server <- function(input, output, session) {
  
  group_to_map_x <- reactive({
    input$x_var
  })
  group_to_map_y <- reactive({
    input$y_var
  })
  
  output$scatterplot <- renderPlot({
      ggplot(leafmap@data, aes_string(x=input$x_var, y=input$y_var)) +
      geom_point(alpha=1/2) +
      labs(x = input$x_var, y = input$y_var)+
      theme_bw()
  })
  
  output$mymap_X <- renderLeaflet({
    leaflet(data = leafmap) %>% addTiles() %>%
      addPolygons(fillColor = ~pal(leafmap@data[[group_to_map_x()]]), 
                  fillOpacity = 0.8, 
                  color = "#BDBDC3", 
                  weight = 1)
  })
  
  output$mymap_Y <- renderLeaflet({
    leaflet(data = leafmap) %>% addTiles() %>%
      addPolygons(fillColor = ~pal(leafmap@data[[group_to_map_y()]]), 
                  fillOpacity = 0.8, 
                  color = "#BDBDC3", 
                  weight = 1)
  })
}

shinyApp(ui, server)