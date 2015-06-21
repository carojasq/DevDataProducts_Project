library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict son's height"),
  sidebarPanel(
    numericInput('mom', 'Insert the mom\'s height in inches', 62, min = 30, max = 100, step = 0.1),
    numericInput('dad', 'Insert the dad\'s height in inches', 62, min = 30, max = 100, step = 0.1)
  ),
  mainPanel(
    h3('Developing data products: Final project'),
    h4('This example will try to predict a son\'s height based on the mom and dad height\'s, for the linear model regression Galton\'s data was used.'),
    h5('You entered for mom height:'),
    verbatimTextOutput("momo"),
    h5('You entered for dad height:'),
    verbatimTextOutput("dado"),
    h5('The mid height is:'),
    verbatimTextOutput("mido"),
    h5('The predicted son height is:'),
    verbatimTextOutput("sono")
  )
))
