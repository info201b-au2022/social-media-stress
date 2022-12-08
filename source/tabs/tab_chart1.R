social_media <- read.csv("https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/data/General%20Social%20Media.csv", stringsAsFactors = TRUE, check.names = FALSE)

x_input <- selectInput(
  "xvar",
  label = "Choose a variable to graph on:",
  choices = c("Monthly Active Users",
  "Percentage of Users that are Female",
  "Percentage of Users that are Male",
  "Daily Time Spent (in minutes)",
  "Growth in 2020",
  "Growth in 2021"),
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
  plotlyOutput("general_chart"),
)
