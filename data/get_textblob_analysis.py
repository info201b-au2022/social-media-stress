# Use Pandas to apply a lambda to the entire row, kinda like sapply or lapply in R
# Textblob for easy NLP without needing to go through scikitlearn or other convoluted steps

import pandas as pd
from textblob import TextBlob

# Read the csv into a dataframe

tweets_df = pd.read_csv('Tweets 11-9-2022.csv')

# If the polarity is above 0.05, it is positive.
# If below -0.05 it is negative
# Neutral otherwise
# I don't know why I am choosing 0.05 cutoff but after manually reading some of
# these I think it be worth considering

def get_sentiment(polarity):
  if (polarity > 0.05):
    return ('Positive')
  if (polarity < -0.05):
    return ('Negative')
  return ('Neutral')

# If the polarity is above 0.5, it is subjective.
# If below 0.5 it is Objective
# Probably do not need this. Not ideal way to do this, should probably have
# most subjective to least
# using if for readability instead of ternary

def get_intensity(subjectivity):
  if (subjectivity < 0.25):
    return ('Objective')
  if (subjectivity < 0.5):
    return ('Somewhat Objective')
  if (subjectivity < 0.75):
    return ('Somewhat Subjective')
  if (subjectivity >= 0.75):
    return ('Subjective')

# Apply textblob functions to dataframe cols to get polarity and subjectivity
# and the above defined to get the actual useful sentiment and intensity

tweets_df['Polarity'] = tweets_df.apply(lambda x: TextBlob(x['Cleaned Tweets']).sentiment.polarity, axis=1)
tweets_df['Subjectivity'] = tweets_df.apply(lambda x: TextBlob(x['Cleaned Tweets']).sentiment.subjectivity, axis=1)
tweets_df['Sentiment'] = tweets_df.apply(lambda x: get_sentiment(x['Polarity']), axis=1)
tweets_df['Intensity'] = tweets_df.apply(lambda x: get_intensity(x['Subjectivity']), axis=1)

# Put this into a CSV

tweets_df.to_csv('Tweets 11-9-2022 with Sentiment.csv', index=False)

# We probably want to graph positive vs negative vs neutral.
# Maybe all neutrals need to be pruned.