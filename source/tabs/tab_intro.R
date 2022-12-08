library("shiny")

intro_panel <- tabPanel(
  "Introduction",
  tags$div(
    titlePanel("Social Media in 2022 - Trends and Emotions"),
    p(HTML("&emsp;"), "Social media dominates the internet of today, with over four billion total social media users in the world as of 2022. This
      large user base, spread across the world, shows that social media has become widely adopted as a primary form of communication for a majority
       of people. Through this project, we want to analyze demographics and trends in social media as of 2022, as well as the psychological effects
       of social media."),
    tags$ul(
      tags$li("What impact does social media have on people’s day-to-day and emotions?"),
      tags$li("Are people engaged in online communities geared towards sensitive topics more or less likely to experience elevated levels of stress?"),
      tags$li("What are some general trends in social media as of 2022?"),
      tags$li("Are people more likely to draw negativity from social media than positivity? How much does this have to do with the way they interact with their apps?")
    ),
    h3("Why This Topic?"),
    p(HTML("&emsp;"), "A lot has happened regarding social media over the last two years. Social media became an outlet for many people to connect during
      a life-altering global pandemic. It is increasingly acting as a news source for people the world over for political, sporting, entertainment, and
      general world happenings. In 2019, TikTok rose to become and continues to be one of the biggest social media apps in the world. In 2022, Twitter was
      purchased by Tesla and SpaceX CEO/founder Elon Musk. Social media continues to change and we wanted to get a general look at how all the apps and their
       demographics have changed as a result."),
    tags$br(),
    p(HTML("&emsp;"), "In modern society there is access to a surplus of information on social media, and many times this can lead to mental stress for individuals.
      Social media can more often increase the fear of missing out, feelings of inadequacy, dissatisfaction, as well as isolation. In result these feelings can negatively
      affect mood and worsen symptoms of depression, anxiety, and stress. social media and its growing influence in modern society and our lives is coming to odds with a
      growing societal conciousness towards the value of stress balancing and mental health."),
    tags$br(),
    p(HTML("&emsp;"), "We hope that this work can somehow drive future policy development in social media and authorities to better ensure that mental health is accounted
      for on a technology that is increasingly becoming the preferred method of digital communication worldwide."),
    h3("About the Data"),
    p(HTML("&emsp;"), "The data used in our project will be drawn from four datasets."),
    tags$ol(
      tags$li("Dreaddit - A Kaggle dataset derived from a report called Dreaddit: A Reddit Dataset for Stress
      Analysis in Social Media. This dataset aims to analyze Reddit posts in relation to stress.
      This is done through the use of a machine learning model that involves corpus analysis and the
      use of Amazon Mechanical Turk workers. We are using the test data which consists of 715 posts,
      while the train data is around 2500+ posts."),
      tags$li("Twitter Sentiment Dataset - Using the snscrape package in Python, we were able to pull the
      latest 3500 tweets from 11/10/2022. After the csv was created, we cleaned and manipulated some of it with Pandas
      in order to run through the textblob library, a library generally meant for simple sentiment analysis and it
      produced the polarity and objectivity columns. We were concerned about the accuracy of this, as the majority
      of it was classified as neutral sentiment, so we added another model from HuggingFace. This one was more
      accurate as it is a trained model which had been trained on over 150,000 tweets. Both of these are represented
      in the dataset."),
      tags$li("General Social Media Dataset - dataset consists of 6 social media platforms and 11 features describing
      the demographics of monthly users. This dataset was created through a combination of various data sets found
      from Sprout Social, Statistia, and other groups."),
      tags$li("Social Media Impact Survey - This dataset consists of 13 described aspects of daily life. Respondents for the survey were asked to indicate whether,
      based on their belief, social media had decreased, increased, or had no impact on each aspect.")
    ),
  ),
  tags$div(
    img(src = "https://www.internetmatters.org/wp-content/uploads/2022/02/reddit-hero.png")
  )
)
