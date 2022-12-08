survey_csv <- read.csv("https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/data/impact_survey.csv", stringsAsFactors = FALSE)

survey_plot <- survey_csv %>%
  select(Global.impact.of.social.media.on.daily.life.2019, Increased, Decreased, Had.no.impact) %>%
  gather(key = Impact, value = Percentage, -Global.impact.of.social.media.on.daily.life.2019)

x_input <- selectInput(
  inputId = "x_var",
  label = "Choose an aspect of daily life:",
 choices = c('Access to information', 'Ease of communication', 'Worsened personal privacy', 'Distractions during your day', 'Polarization in politics', 
             'Foreign meddling in politics', 'Censorship', 'Your overall quality of life', 'Civility in culture', 'Civility online' ),
 selected = TRUE
)

interactive2 <- tabPanel(
  "Interactive 2",
  x_input,
  plotlyOutput("survey_chart"),
  p(HTML("&emsp;"), "This chart displays the measure of social media impact on daily life of individuals ages 16-64 worldwide as of February 2019. Respondents 
  were asked to repond whether different aspects of their daily life had decreased, increased, or had no impact as a result of social media. 
  You can change the variable to be able to alter the variable graphed on the Y axis.")
)

