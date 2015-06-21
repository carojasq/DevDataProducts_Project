#Necesario instalar shinyapps, devtools, galton data.
# input: altura madre, altura padre/
# Proceso: Generar LM, sumar alturas, divdir y predecir
library(shiny)
library(HistData)
data(Galton)
galton_model <- lm(child ~ parent, data=(Galton))

shinyServer(
  function(input, output) {
    x <- reactive({}) ;
    output$mido <- renderText({(input$mom + input$dad)/2});
    output$sono <- renderText({predict(galton_model, newdata=data.frame(parent=(input$mom + input$dad)/2))[1]})
    output$momo <- renderText({input$mom});
    output$dado <- renderText({input$dad});
  }
  
)
