# Alternative script which will take in the previously generated CSV with textblob
# and use an alternative library from huggingface which should more accurately
# identify neutrals.

import pandas as pd
from textblob import TextBlob
from transformers import pipeline

# Read the csv into a dataframe

tweets_df = pd.read_csv('Tweets 11-10-2022 Sentiment.csv')

# Function to apply the pipeline from cardiffnlp's twitter roberta trained model, returning a list of
# the label and score

def use_transformer(tweet):
  specific_model = pipeline(model="cardiffnlp/twitter-roberta-base-sentiment-latest")
  sentiment_dict = specific_model(tweet)
  return [sentiment_dict[0]['label'], sentiment_dict[0]['score']]

# Rename old sentiment to TextBlob Sentiment to differentiate

tweets_df = tweets_df.rename(columns={'Sentiment': 'TextBlob Sentiment'})

# Call the new sentiment Cardiff Sentiment. Convert the results of the apply into a tuple, turn tuple into list to
# store these in two name columns.

tweets_df['Cardiff Sentiment'], tweets_df['Confidence'] = list(zip(*tweets_df.apply(lambda x: use_transformer(x['Cleaned Tweets']), axis = 1)))

# Overwrite old CSV.

tweets_df.to_csv('Tweets 11-10-2022 Sentiment.csv', index=False)
