# load packages
library("dplyr")
library("tidyr")
library("ggplot2")

#load csv data
dreaddit <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Dreaddit-Dataset.csv", stringsAsFactors = FALSE)
# filter data
dreaddit_data <- dreaddit %>%
  group_by(Subreddit) %>%
  summarize(Tone = mean(Tone), na.rm = TRUE) 

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

#create scatterplot
chart1 <- ggplot(data = dreaddit_data) +
  geom_col(mapping = aes(x = Subreddit, y = Tone)) +
  coord_flip() +
  labs(title = "Average Tone by Subreddit")

chart1
