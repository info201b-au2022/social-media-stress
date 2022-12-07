library(shiny)
library(plotly)

x_input <- selectInput(
  "sentiment",
  label = "Choose a variable to graph on:",
  choices = c("Positive", "Neutral", "Negative"),
  selected = "Monthly Active Users"
)

interactive1 <- tabPanel(
  "Interactive 1",
  tags$section(
    x_input,
    p(HTML("&emsp;"), "This chart displays the most popular social media
    apps. You can change the variable to be able to alter the variable graphed
     on the X axis."),
  ),
  plotlyOutput("wordcloud"),
)
