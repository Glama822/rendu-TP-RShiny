#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)

fluidPage(
  theme = shinytheme("darkly"),
  
  # Title
  titlePanel("Bienvenue sur l'application Shiny !"),
  
  sidebarLayout(
    sidebarPanel(
      h1(textOutput("salutation")),
      textInput("prenom", "Quel est ton prénom ?"),
      h1("Le Challenge du Curseur"),
      sliderInput("curseur", label = "Si x est ", min = 1, max = 100, value = 30),
      sliderInput("curseur2", label = "Si y est ", min = 1, max = 100, value = 30),
      strong("alors x * y est : "),
      strong(textOutput("le_texte")),
    ),
    
    mainPanel(
      selectInput("dataset", "Dataset", choices = c("economics", "faithfuld", "seals")),
      verbatimTextOutput("summary"),
      plotOutput("graphe")
    )
  )
)

    
