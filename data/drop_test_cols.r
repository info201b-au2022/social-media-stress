library("dplyr")
library("stringr")

dreaddit_test <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/raw/dreaddit-test.csv")

dreaddit_test <- dreaddit_test[, -1]

dreaddit_test_clean <- select(
  dreaddit_test, subreddit, text, label,
  confidence, social_karma, lex_liwc_Clout, lex_liwc_Authentic,
  lex_liwc_Tone, lex_liwc_posemo, lex_liwc_negemo, lex_liwc_anx,
  lex_liwc_anger, lex_liwc_sad, lex_liwc_power, sentiment
)

dreaddit_test_clean <- rename(dreaddit_test_clean,
  "Subreddit" = "subreddit", "Reddit Text" = "text", "Stress" = "label",
  "Model Confidence" = "confidence",
  "Reddit Karma" = "social_karma", "Clout" = "lex_liwc_Clout",
  "Authenticity" = "lex_liwc_Authentic", "Tone" = "lex_liwc_Tone",
  "Positive Emotion" = "lex_liwc_posemo",
  "Negative Emotion" = "lex_liwc_negemo",
  "Anxiety" = "lex_liwc_anx", "Anger" = "lex_liwc_anger",
  "Sadness" = "lex_liwc_sad", "Power" = "lex_liwc_power",
  "Sentiment" = "sentiment"
)

dreaddit_test_clean <- dreaddit_test_clean %>%
  mutate(Stress = str_replace(Stress, "0", "Not Stressed")) %>%
  mutate(Stress = str_replace(Stress, "1", "Stressed"))

write.csv(dreaddit_test_clean, paste(getwd(), "/data/Dreaddit Dataset.csv", sep =""), row.names = FALSE)