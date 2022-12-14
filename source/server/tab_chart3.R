library(tidyverse)
library(ggplot2)
library(dplyr)

dreaddit <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Dreaddit-Dataset.csv", stringsAsFactors = FALSE)
stress_status <- unique(dreaddit$Stress)

dreaddit_data <- dreaddit
colnames(dreaddit_data) <- gsub(" ", ".", colnames(dreaddit_data))
dreaddit_data

dreaddit_data$Subreddit[dreaddit_data$Subreddit == "survivorsofabuse"] <- "Survivors of Abuse"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "stress"] <- "Stress"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "relationships"] <- "Relationships"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "ptsd"] <- "PTSD"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "homeless"] <- "Homeless"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "food_pantry"] <- "Food Pantry"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "domesticviolence"] <- "Domestic Violence"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "assistance"] <- "Assistance"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "anxiety"] <- "Anxiety"
dreaddit_data$Subreddit[dreaddit_data$Subreddit == "almosthomeless"] <- "Almost Homeless"

get_stress_analysis <- function(input_stress, input_variable) {
  if(input_variable == "Tone") {
    variable <- dreaddit_data %>%
      filter(Stress %in% input_stress) %>%
      group_by(Subreddit) %>%
      summarize(Scale = mean(Tone, na.rm = TRUE))
  }
  if(input_variable == "Positive Emotion") {
    variable <- dreaddit %>%
      filter(Stress %in% input_stress) %>%
      group_by(Subreddit) %>%
      summarize(Scale = mean(Positive.Emotion, na.rm = TRUE))
  }
  if(input_variable == "Negative Emotion") {
    variable <- dreaddit %>%
      filter(Stress %in% input_stress) %>%
      group_by(Subreddit) %>%
      summarize(Scale = mean(Negative.Emotion, na.rm = TRUE))
  }
  return(variable)
}


plot_stress_analysis <- function(input_stress, input_variable) {
  plot3 <- ggplot(data = get_stress_analysis(input_stress, input_variable), aes(x = Subreddit, y = Scale, fill = Scale)) +
    geom_bar(stat = "identity") +
    coord_flip() +
    scale_y_continuous(labels = scales::comma) +
    labs(title = "Measuring Tone, Positive/Negative Emotion in Subreddits",
       x = "Subreddits Analyzed",
       y = "Quantified Value of Measured Variable")
  return(plot3)
}

