library(shiny)
library(plotly)

social_media <- read.csv("https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/data/General%20Social%20Media.csv", stringsAsFactors = TRUE, check.names=FALSE)

x_input <- selectInput(
  "xvar",
  label = "X Variable",
  choices = c('Monthly Active Users', 'Percentage of Users that are Female'),
  selected = "Monthly Active Users"
)

interactive1 <- tabPanel(
  "Interactive 1",
  x_input,
  plotlyOutput("general_chart")
)