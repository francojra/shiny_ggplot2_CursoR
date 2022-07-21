#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

colunas <- names(mtcars)

ui <- fluidPage(
  titlePanel("Shiny app com um ggplot"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "varX",
        label = "Variável eixo X",
        choices = colunas
      ),
      selectInput(
        "varY",
        label = "Variável eixo Y",
        choices = colunas,
        selected = colunas[6]
      )
    ),
    mainPanel(
      plotOutput("grafico")
    )
  )
)
