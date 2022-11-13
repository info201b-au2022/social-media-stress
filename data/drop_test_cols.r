library("dplyr")

dreaddit_test <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/dreaddit-test.csv")

dreaddit_test_clean <- select(
  dreaddit_test, text, label,
  confidence, social_karma, lex_liwc_Clout, lex_liwc_Authentic,
  lex_liwc_Tone, lex_liwc_posemo, lex_liwc_negemo, lex_liwc_anx,
  lex_liwc_anger, lex_liwc_sad, lex_liwc_power, sentiment
)

dreaddit_test_clean <- rename(dreaddit_test_clean,
  "Reddit Text" = "text", "Stress (1) or Not Stress (0)" = "label",
  "Model Confidence in Accuracy" = "confidence",
  "Reddit Karma" = "social_karma", "Clout" = "lex_liwc_Clout",
  "Authenticity" = "lex_liwc_Authentic", "Tone" = "lex_liwc_Tone",
  "Positive Emotion" = "lex_liwc_posemo",
  "Negative Emotion" = "lex_liwc_negemo",
  "Anxiety" = "lex_liwc_anx", "Anger" = "lex_liwc_anger",
  "Sadness" = "lex_liwc_sad", "Power" = "lex_liwc_power",
  "Sentiment" = "sentiment"
)
print(getwd())
write.csv(dreaddit_test_clean, paste(getwd(), "/data/Dreaddit Dataset.csv", sep =""))