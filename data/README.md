# Data

In this project, we are making use of four datasets.

## Dataset 1: Dreaddit

The first dataset is a [Kaggle dataset](https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media) derived from a report called [Dreaddit: A Reddit Dataset for Stress Analysis in Social Media](https://aclanthology.org/D19-6213/). This dataset aims to analyze Reddit posts in relation to stress. This is done through the use of a machine learning model that involves corpus analysis and the use of Amazon Mechanical Turk workers. We are using the test data which consists of 715 posts, while the train data is around 2500+ posts.

## Dataset 2: 11/10/2022 Twitter Sentiment Analysis

Using the snscrape library in Python, I was able to pull the latest 3500 tweets from around 12:30 AM 11/10/2022. After the csv was created, I cleaned and manipulated some of it with Pandas in order to run through the textblob library, a library generally meant for simple sentiment analysis and it produced the polarity and objectivity columns. I was concerned about the accuracy of this, as the majority of it was classified as neutral sentiment, so I added another model from HuggingFace. This one was more accurate as it is a trained model which had been trained on over 150,000 tweets. Both of these are represented in the dataset.

## Dataset 3: General Social Media

This [dataset]((https://www.kaggle.com/datasets/anjaneyatripathi/emotion-classification-nlp)) consists of 6 social media platforms and 11 features describing the demographics of monthly users.

## Dataset 4: Impact Survey

This [dataset](https://www.statista.com/statistics/1015131/impact-of-social-media-on-daily-life-worldwide/) consists of 13 described aspects of daily life. Respondents for the survey were asked to indicate whether, based on their belief, social media had decreased, increased, or had no impact on each aspect. 

## Data files
|Data File/Folder Name | Brief Description|
|---------------| -----------------|
|[Dreaddit Dataset.csv](./Dreaddit-Dataset.csv) | This file is the Reddit test data.
|[Twitter Sentiment Dataset.csv](./Twitter-Sentiment-Dataset.csv) | This is the Twitter data.
|[General Social Media.csv](data/General Social Media.csv) | This is the General Social Media data.
|[impact_survey.csv](./impact_survey.csv) | This file is the Impact Survey data.
| raw | The raw folder are the datasets before cleaning and processing with sentiment analysis.
| py-scripts | source scripts and jupyter notebooks for the sentiment analysis


