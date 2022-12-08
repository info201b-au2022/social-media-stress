library("shiny")
library("sass")
library("plotly")
library("tidyr")
library("dplyr")
library("stringr")
library("tm")
library("tidytext")
library("wordcloud")
library("tidyverse")

css <- sass(sass_file("styles.scss"))

source("tabs/tab_intro.R")
source("tabs/tab_chart1.R")
source("tabs/tab_chart2.R")
source("tabs/tab_chart3.R")
source("tabs/tab_wordcloud.R")
source("tabs/tab_conclusion.R")
source("tabs/tab_takeaway.R")

#### interactive visualization 3
chart3_sidebar_content <- sidebarPanel(
  selectInput(
    inputId = "input_stress",
    label = "Select Stress Category: ",
    choices = stress_status,),
  selectInput(
    inputId = "input_variable",
    label = "Select Variable to be Analyzed Quantitatively: ",
    choices = c("Tone",
                "Positive Emotion",
                "Negative Emotion" ))
)
chart3_main_content <- mainPanel(
  plotlyOutput("plot3")
)

interactive3 <- tabPanel(
  "Interactive 3",
  br(),
  sidebarLayout(
    chart3_sidebar_content,
    chart3_main_content
  ),
)

#####


ui <- fluidPage(
  tags$head(tags$style(css)),
  navbarPage(
    "Social Media Stress",
    intro_panel,
    navbarMenu(
      "Charts",
      interactive1,
      interactive2,
      interactive3,
      wordcloud
    ),
    takeaway,
    conclusion
  )
)
