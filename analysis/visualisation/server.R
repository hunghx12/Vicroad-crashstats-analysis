#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(leaflet)
library(maps)
library(dplyr)

nodes = read.csv('../../data/clean/NODE.csv')

function(input, output, session) {
  output$vicMap <- renderLeaflet({
    leaflet(data = nodes) %>%
      addProviderTiles("CartoDB.Positron") %>%
      setView(lat = -36.9848, lng = 143.3906, zoom = 6.2) %>%
      addCircleMarkers(lng = ~Long, lat = ~Lat, radius = 0.1, 
                       clusterOptions = markerClusterOptions(
                         showCoverageOnHover = FALSE
                       ))
  })
  
}

