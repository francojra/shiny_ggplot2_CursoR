#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

server <- function(input, output, session) {
  output$grafico <- renderPlot({
    ggplot(mtcars, aes(x = .data[[input$varX]], y = .data[[input$varY]])) +
      geom_point()
  })
}
