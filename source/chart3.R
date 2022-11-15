# load packages
library("wordcloud")
library("tm")

# load csv data
twt_sentiment <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Twitter-Sentiment-Dataset.csv", stringsAsFactors = FALSE)
#convert to vector
twt_text <- twt_sentiment$Cleaned.Tweets

#convert to corpus
twt_doc <- Corpus(VectorSource(twt_text))

#clean text
twt_doc <- twt_doc %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace) 
twt_doc <- tm_map(twt_doc, content_transformer(tolower))
twt_doc <- tm_map(twt_doc, removeWords, stopwords("english"))
 
#create wordcloud
chart3 <- wordcloud(twt_doc,
          max.words = 100,
          random.order = FALSE,
          colors = brewer.pal(8, "Dark2"))

