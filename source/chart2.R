# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:
library("dplyr")
library("tidyr")
library("ggplot2")

#load csv data
dreaddit <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Dreaddit%20Dataset.csv", stringsAsFactors = TRUE)

summary(dreaddit)
summary(dreaddit$Stress)

summary_info <- list(dreaddit)
summary_info$num_observations <- nrow(dreaddit)

mean(dreaddit$Anxiety)
mean(dreaddit$Anxiety, na.rm = TRUE)

median(dreaddit$Anxiety, na.rm = TRUE)

sd(dreaddit$Anxiety, na.rm = TRUE)

quantile(dreaddit$Anxiety)


mean(dreaddit$Positive.Emotion)
mean(dreaddit$Positive.Emotion, na.rm = TRUE)

median(dreaddit$Positive.Emotion)
median(dreaddit$Positive.Emotion, na.rm = TRUE)

sd(dreaddit$Positive.Emotion, na.rm = TRUE)

quantile(dreaddit$Positive.Emotion)

