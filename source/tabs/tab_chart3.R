dreaddit <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Dreaddit-Dataset.csv", stringsAsFactors = FALSE)
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
  ),
  plotlyOutput("plot3")
)