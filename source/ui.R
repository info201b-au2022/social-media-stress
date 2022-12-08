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
library("RColorBrewer")

css <- sass(sass_file("styles.scss"))

source("tabs/tab_intro.R")
source("tabs/tab_chart1.R")
source("tabs/tab_chart2.R")
source("tabs/tab_chart3.R")
source("tabs/tab_wordcloud.R")
source("tabs/tab_conclusion.R")
source("tabs/tab_takeaway.R")

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
