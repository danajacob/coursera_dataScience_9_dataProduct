library(shiny)

shinyUI(
  pageWithSidebar(
  
  # Application title
  headerPanel("Ounce-Gram Converter"),
  
  sidebarPanel(
   numericInput('ounce', 'Enter number of ounces below, then click on Convert', 0, min = 1, max = 10000, step = 1),
   numericInput('gram', 'Or, enter number of grams below, then click on Convert', 0, min = 1, max = 10000, step = 1),
   submitButton('Convert')
   ),
    
    mainPanel(
      h5('Gram'),
      verbatimTextOutput("conversion1"),
      h5('Ounce'),
      verbatimTextOutput("conversion2")
    )
  )
)