dreaddit <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Dreaddit-Dataset.csv", stringsAsFactors = FALSE)

source("server/tab_chart3.R")

stress_status <- unique(dreaddit$Stress)

stress_input <- selectInput (
  "input_stress",
  label = "Select Stress Category: ",
  choices = stress_status)

variable_input <- selectInput (
  "input_variable",
  label = "Select Variable to be Analyzed Quantitatively: ",
  choices = c("Tone",
              "Positive Emotion",
              "Negative Emotion" )
)

interactive3 <- tabPanel(
  "Interactive 3",
  br(),
  tags$section (
    stress_input,
    variable_input,
    p(HTML("&emsp;"), "This chart analyzes three variables from the Dreaddit dataset
      : Tone, Positive Emotion, and Negative Emotion. The Reddit datasets are also
      grouped into two groups based on calculated stress status: Stressed and not
      Stressed. Tone is calculated on a scale of 0 to 100. A lower numerical tone
      value corresponds to a higher level of stress detected in the 10 subreddits
      analyzed, while a higher numerical tone indicates a lower level of stress
      detected. As for positive and negative emotion, a higher numerical value
      correlates to a higher presence of the variable being analyzed. (For example
      subreddits that have a positve emotion value of 5, contain more positivity
      in the posts than subreddits with a positve emotion value less than 5.)"),
  ),
  plotlyOutput("plot3")
)
