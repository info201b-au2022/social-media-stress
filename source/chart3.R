# load packages
library("wordcloud")
library("tm")
library("dplyr")
# load csv data
twt_sentiment <- read.csv("https://raw.githubusercontent.com/info201b-au2022/Project-11-BC/main/data/Twitter-Sentiment-Dataset.csv", stringsAsFactors = FALSE)
#convert to vector
twt_text <- twt_sentiment$Cleaned.Tweets

#convert to corpus
twt_doc <- Corpus(VectorSource(twt_text))

docs <- twt_doc %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
docs <- tm_map(docs, content_transformer(tolower))
docs <- tm_map(docs, removeWords, stopwords("english"))
docs <- tm_map(docs, removeWords, c("will", "people", "stokes", "thinkwell", "ay", "yes", "indvseng", "pandya", "[][]'m", "[][]", "[][]'s",
                                    "said", "one", "just", "thats", "twitter", "ive", "hardik", "上海", "'re", "amp", "lol", "youre", "cant",
                                    "yeah", "get", "[][]'ve", "推特刷粉", "推特粉丝", "上海线下", "ben", "’s", "tworldcup", "深圳"))

gsub("https\\S*", "", docs) 
gsub("@\\S*", "", docs) 
gsub("amp", "", docs) 
gsub("[\r\n]", "", docs)
gsub("[[:punct:]]", "", docs)

#clean text
library("tidytext")
dtm <- TermDocumentMatrix(docs) 
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix), decreasing = TRUE)
df <- data.frame(word = names(words), freq = words)

df$freq[df$freq == 118] <- 0
df$freq[df$freq == 50] <- 0
df$freq[df$freq == 32] <- 0

 
chart3 <- wordcloud(words = df$word, freq = df$freq, min.freq = 1,
                    max.words = 100, random.order = FALSE, rot.per = 0.35, color = "slategrey")
                    
chart3

