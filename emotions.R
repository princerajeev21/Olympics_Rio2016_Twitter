library(RCurl)
require(sentiment)

###Reviews Classification
# classify emotion
class_emo = classify_emotion(sindhu_tweets, algorithm="bayes", prior=1.0)

# get emotion best fit
emotion = class_emo[,7]

# substitute NA's by "unknown"
emotion[is.na(emotion)] = "unknown"

# classify polarity
class_pol = classify_polarity(sindhu_tweets, algorithm="bayes")

# get polarity best fit
polarity = class_pol[,4]

#Calculate Sentiment score of reviews
score<-getSentimentScore(sindhu_tweets,pos.words,neg.words)

sentiment<-as.data.frame(cbind(emotion,polarity,score))

write.csv(sentiment,"sindhu.csv",row.names=FALSE)


opinion.lexicon.pos<-scan("positive-words.txt",what = 'character',comment.char = ';')
opinion.lexicon.neg<-scan("negative-words.txt",what = 'character',comment.char = ';')



#Positive words dictionary
pos.words = c(opinion.lexicon.pos,'upgrade')
#Negative words dictionary
neg.words = c(opinion.lexicon.neg,'wait','waiting', 'wtf', 'cancellation')

#Function to calculate sentiment score based on comparison between positive and negative words dictionary
getSentimentScore = function(sentences, words.positive,
                             words.negative, .progress='none')
{
  require(plyr)
  require(stringr)
  scores = laply(sentences,
                 function(sentence, words.positive, words.negative) {
                   # Let first remove the Digit, Punctuation character and Control characters:
                   sentence = gsub('[[:cntrl:]]', '', gsub('[[:punct:]]', '',
                                                           gsub('\\d+', '', sentence)))
                   # Then lets convert all to lower sentence case:
                   sentence = tolower(sentence)
                   # Now lets split each sentence by the space delimiter
                   words = unlist(str_split(sentence, '\\s+'))
                   # Get the boolean match of each words with the positive & negative opinion-lexicon
                   pos.matches = !is.na(match(words, words.positive))
                   neg.matches = !is.na(match(words, words.negative))
                   # Now get the score as total positive sentiment minus the total negatives
                   score = sum(pos.matches) - sum(neg.matches)
                   return(score)
                 }, words.positive, words.negative, .progress=.progress )
  # Return a data frame with respective sentence and the score
  return(data.frame(score=scores))
}
