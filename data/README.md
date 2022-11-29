# Data

In this project, we are making use of two datasets.

## Dataset 1: Dreaddit

The first dataset is a [Kaggle dataset](https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media) derived from a report called [Dreaddit: A Reddit Dataset for Stress Analysis in Social Media](https://aclanthology.org/D19-6213/). This dataset aims to analyze Reddit posts in relation to stress. This is done through the use of a machine learning model that involves corpus analysis and the use of Amazon Mechanical Turk workers. We are using the test data which consists of 715 posts, while the train data is around 2500+ posts.

## Dataset 2: 11/10/2022 Twitter Sentiment Analysis

Using the snscrape library in Python, I was able to pull the latest 3500 tweets from around 12:30 AM 11/10/2022. After the csv was created, I cleaned and manipulated some of it with Pandas in order to run through the textblob library, a library generally meant for simple sentiment analysis and it produced the polarity and objectivity columns. I was concerned about the accuracy of this, as the majority of it was classified as neutral sentiment, so I added another model from HuggingFace. This one was more accurate as it is a trained model which had been trained on over 150,000 tweets. Both of these are represented in the dataset.

## Dataset 3: Emotion Classification NLP

This [dataset]((https://www.kaggle.com/datasets/anjaneyatripathi/emotion-classification-nlp)) consists of 3099 tweets that have been processed and put into four categories, these being fear, anger, sadness, and joy.

## Dataset 4: Cyberbullying Twitter

This [dataset](https://www.kaggle.com/datasets/andrewmvd/cyberbullying-classification) contains over 46,000 tweets, each of which fall into categories of cyberbullying on grounds of age, ethnicity, gender, religion, or other, and not cyberbullying.

## Dataset 5: Various Social Media Anxiety and Depression

This [dataset](https://www.kaggle.com/datasets/sahasourav17/students-anxiety-and-depression-dataset) has 6500 entries that comprise various posts from social media platforms. These include Facebook posts and from initial inspection, does not seem to include any tweets.

## Data files
|Data File/Folder Name | Brief Description|
|---------------| -----------------|
|[Dreaddit Dataset.csv](./Dreaddit-Dataset.csv) | This file is the Reddit test data.
|[Twitter Sentiment Dataset.csv](./Twitter-Sentiment-Dataset.csv) | This is the Twitter data.
| raw | The raw folder are the datasets before cleaning and processing with sentiment analysis.
| py-scripts | source scripts and jupyter notebooks for the sentiment analysis
