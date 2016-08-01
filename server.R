convertOunce <- function(ounce) ounce * 28.3495
convertGram <- function(gram) gram * 0.035274

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$ounce})
    output$conversion1 <- renderPrint({convertOunce(input$ounce)})
    output$inputValue2 <- renderPrint({input$gram})
    output$conversion2 <- renderPrint({convertGram(input$gram)})
  }
)