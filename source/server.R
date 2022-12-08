source("server/tab_chart3.R")

server <- function(input, output) {
  output$general_chart <- renderPlotly({
    print(input$xvar)
    to_plot <- pivot_longer(social_media, cols = input$xvar, names_to = "Selected", values_to = "Percentage")
    chart2 <- ggplot(to_plot, aes(fill = Name, y = Name, x = Percentage)) +
      geom_bar(position = "dodge", stat = "identity") +
      labs(
        title = "Social Media Platforms",
        x = input$xvar,
        y = "Platforms"
      ) +
      theme(legend.position = "none")

    p <- ggplotly(chart2)

    return(p)
  })

  output$survey_chart <- renderPlotly({
    survey_plot <- survey_csv %>%
      select(Global.impact.of.social.media.on.daily.life.2019, Increased, Decreased, Had.no.impact) %>%
      gather(key = Impact, value = Percentage, -Global.impact.of.social.media.on.daily.life.2019)
    print(input$x_var)
    chart1 <- ggplot(data = survey_plot %>%
                       filter(Global.impact.of.social.media.on.daily.life.2019 == input$x_var)) +
      geom_col(mapping = aes(x = Percentage, y = input$x_var, fill = Impact)) +
      scale_fill_brewer(labels = c("Decreased", "Had no impact", "Increased"), palette = "Set3") +
      labs(
        title = "Global Impact of Social Media on Daily Life (2019)",
        y = "Daily Life",
        x = "Percentage (%)",
        caption = "Measure of social media impact on daily life of individuals ages 16-64 worldwide as of February 2019."
      )

    p2 <- ggplotly(chart1)

    return(p2)
  })

  #Interactive Visualization 3
  output$plot3 <- renderPlotly({
    return(plot_stress_analysis(input$input_stress, input$input_variable))
  })
  outputOptions(output, "plot3", suspendWhenHidden = FALSE)
  ####

  output$wordcloud <- renderPlot({
    twt_sentiment <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Twitter-Sentiment-Dataset.csv", stringsAsFactors = FALSE)
    twt_text <- twt_sentiment %>% filter(Cardiff.Sentiment == input$sentiment)
    twt <- twt_text$Cleaned.Tweets
    # convert to corpus
    twt_doc <- Corpus(VectorSource(twt))

    docs <- twt_doc %>%
      tm_map(removeNumbers) %>%
      tm_map(removePunctuation) %>%
      tm_map(stripWhitespace)
    docs <- tm_map(docs, content_transformer(tolower))
    docs <- tm_map(docs, removeWords, stopwords("english"))
    docs <- tm_map(docs, removeWords, c(
      "will", "people", "stokes", "thinkwell", "ay", "yes", "indvseng", "pandya", "[][]'m", "[][]", "[][]'s",
      "said", "one", "just", "thats", "twitter", "ive", "hardik", "上海", "'re", "amp", "lol", "youre", "cant",
      "yeah", "get", "[][]'ve", "推特刷粉", "推特粉丝", "上海线下", "ben", "’s", "tworldcup", "深圳", "like", "[]'s", "s", "dont"
    ))

    gsub("https\\S*", "", docs)
    gsub("@\\S*", "", docs)
    gsub("amp", "", docs)
    gsub("[\r\n]", "", docs)
    gsub("[[:punct:]]", "", docs)

    dtm <- TermDocumentMatrix(docs)
    matrix <- as.matrix(dtm)
    words <- sort(rowSums(matrix), decreasing = TRUE)
    df <- data.frame(word = names(words), freq = words)

    df$freq[df$freq == 118] <- 0
    df$freq[df$freq == 50] <- 0
    df$freq[df$freq == 32] <- 0
    chart3 <- wordcloud(words = df$word, freq = df$freq, min.freq = 1,
            max.words = 50, random.order = FALSE, rot.per = 0.35, color = "slategrey")

    return(chart3)
  })
}
