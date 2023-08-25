#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(leaflet)

fluidPage(
  tags$head(tags$style(
    HTML('
             #suburb_info {background-color: rgba(255,255,255,1); margin: 100;}
         ')
  )),
  titlePanel("Crash Stats"),
  leafletOutput("vicMap", height = 600)
)
