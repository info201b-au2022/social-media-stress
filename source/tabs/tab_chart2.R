library(shiny)
library(plotly)
library(dplyr)
library(tidyverse)

survey_csv <- read.csv("https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/data/impact_survey.csv", stringsAsFactors = FALSE)

survey_plot <- survey_csv %>%
  select(Global.impact.of.social.media.on.daily.life.2019, Increased, Decreased, Had.no.impact) %>%
  gather(key = Impact, value = Percentage, -Global.impact.of.social.media.on.daily.life.2019) 

#x_input <- selectInput(
  #"x_var",
  #label = "Impact",
 #choices = c('Decreased', 'Had no impact', 'Increased'),
# selected = "Increased"
#)

interactive2 <- tabPanel(
  "Interactive 2",
  #x_input,
  plotlyOutput("survey_chart")
)

