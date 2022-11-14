# load packages
library("dplyr")
library("tidyr")
library("ggplot2")

#load csv data
dreaddit <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Dreaddit%20Dataset.csv", stringsAsFactors = FALSE)

# filter data
dreaddit_data <-dreaddit %>%
  group_by(Subreddit) %>%
  summarize(Tone = mean(Tone), na.rm = TRUE)

#create scatterplot 
chart1 = ggplot(data = dreaddit_data) +
  geom_point(mapping = aes(x = Subreddit, y = Tone)) +
  coord_flip() +
  labs(title = "Average Tone by Subreddit") 

