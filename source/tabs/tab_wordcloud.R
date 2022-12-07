x_input <- selectInput(
  "sentiment",
  label = "Choose a variable to graph on:",
  choices = c("Positive", "Neutral", "Negative"),
  selected = "Positive"
)

wordcloud <- tabPanel(
  "Tweet Wordclouds",
  tags$section(
    x_input,
    p(HTML("&emsp;"), "A wordcloud of the most popular words in tweets of the
    selected sentiment."),
  ),
  plotOutput("wordcloud"),
)
