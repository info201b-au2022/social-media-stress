library("dplyr")

reddit_data <- read.csv(paste(getwd(), "/data/Dreaddit Dataset.csv", sep = ""))
twitter_data <- read.csv(paste(getwd(), "/data/Twitter Sentiment Dataset.csv", sep = ""))

emotions_by_stress <- reddit_data %>%
  group_by(Stress) %>%
  summarise(
    "Average Sentiment" = mean(Sentiment),
    "Median Sentiment" = median(Sentiment),
    "Average Positive Emotion" = mean(Positive.Emotion),
    "Nedian Negative Emotion" = median(Positive.Emotion),
    "Average Negative Emotion" = mean(Negative.Emotion),
    "Median Negative Emotion" = median(Negative.Emotion),
    "Average Anxiety" = mean(Anxiety),
    "Median Anxiety" = median(Anxiety),
    "Average Anger" = mean(Anger),
    "Median Anger" = median(Anger),
    "Average Sadness" = mean(Sadness),
    "Median Sadness" = median(Sadness)
  )

emotions_by_subreddit <- reddit_data %>%
  group_by(Subreddit) %>%
  summarise(
    "Post Count" = n(),
    "Stressed" = sum(Stress == "Stressed"),
    "Stressed Percentage" = sum(Stress == "Stressed") / n(),
    "Average Tone" = mean(Tone),
    "Median Tone" = median(Tone)
  )

most_confident_neg_hugging <- twitter_data %>%
  filter(Confidence == min(Confidence)) %>%
  pull(Cleaned.Tweets)

most_neg_textblobs <- twitter_data %>%
  filter(Polarity == min(Polarity)) %>%
  pull(Cleaned.Tweets)

most_confident_pos_hugging <- twitter_data %>%
  filter(Confidence == max(Confidence)) %>%
  pull(Cleaned.Tweets)

most_pos_textblobs <- twitter_data %>%
  filter(Polarity == max(Polarity)) %>%
  pull(Cleaned.Tweets)
