catch.error = function(x)
{
  # Create a missing value for test purpose
  y = NA
  
  # Try to catch that error (NA) we just created
  
  catch_error = tryCatch(tolower(x), error=function(e) e)
  
  # if not an error, convert y to lowercase
  if (!inherits(catch_error, "error"))
    
    y = tolower(x)
  
  # check result if error exists, otherwise the function works fine.
  return(y)
}

cleanTweets<- function(tweet){
  
  # Clean the tweet for sentiment analysis
  # remove html links, which are not required for sentiment analysis
  
  tweet = gsub("(f|ht)(tp)(s?)(://)(.*)[.|/](.*)", " ", tweet)
  
  # First we will remove retweet entities from
  
  tweet = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", " ", tweet)
  
  # Then remove all "#Hashtag"
  
  tweet = gsub("#\\w+", " ", tweet)
  
  # Then remove all "@people"
  
  tweet = gsub("@\\w+", " ", tweet)
  
  tweet =gsub("<\\w+"," ",tweet)
  
  # Then remove all the punctuation
  
  tweet = gsub("[[:punct:]]", " ", tweet)
  
  # Then remove numbers, we need only text for analytics
  
  tweet = gsub("[[:digit:]]", " ", tweet)
  
  # finally, we remove unnecessary spaces (white spaces, tabs etc)
  
  tweet = gsub("[ \t]{2,}", " ", tweet)
  tweet = gsub("^\\s+|\\s+$", "", tweet)
  
  tweet = catch.error(tweet)
  
  tweet
}

cleanTweetsAndRemoveNAs<- function(Tweets) {
  
  TweetsCleaned = sapply(Tweets, cleanTweets)
  
  # Remove the "NA" tweets from this tweet list
  
  TweetsCleaned = TweetsCleaned[!is.na(TweetsCleaned)]
  
  names(TweetsCleaned) = NULL
  
  # Remove the repetitive tweets from this tweet list
  
  TweetsCleaned = unique(TweetsCleaned)
  
  TweetsCleaned
}


bolt_tweets<-cleanTweetsAndRemoveNAs(bolt_df$text)
write.table(bolt_tweets,"bolt.txt",row.names = FALSE)

phelps_tweets<-cleanTweetsAndRemoveNAs(phelps_df$text)
write.table(phelps_tweets,"phelps.txt",row.names = FALSE)

olympics_tweets<-cleanTweetsAndRemoveNAs(olympics_df$text)
write.table(olympics_tweets,"olympics.txt",row.names = FALSE)


olympic_opening_ceremony_tweets<-cleanTweetsAndRemoveNAs(opening_ceremony_df$text)
write.table(olympic_opening_ceremony_tweets,"opening_ceremony.txt",row.names = FALSE)

gatlin_tweets<-cleanTweetsAndRemoveNAs(gatlin_df$text)
write.table(gatlin_tweets,"gatlin.txt",row.names = FALSE)

allyson_tweets<-cleanTweetsAndRemoveNAs(allyson_df$text)
write.table(allyson_tweets,"allyson.txt",row.names = FALSE)

ashton_tweets<-cleanTweetsAndRemoveNAs(ashton_df$text)
write.table(ashton_tweets,"ashton.txt",row.names = FALSE)

biles_tweets<-cleanTweetsAndRemoveNAs(biles_df$text)
write.table(biles_tweets,"biles.txt",row.names = FALSE)

blake_tweets<-cleanTweetsAndRemoveNAs(blake_df$text)
write.table(blake_tweets,"blake.txt",row.names = FALSE)

katie_tweets<-cleanTweetsAndRemoveNAs(katie_df$text)
write.table(katie_tweets,"katie.txt",row.names = FALSE)

kayla_tweets<-cleanTweetsAndRemoveNAs(kayla_df$text)
write.table(kayla_tweets,"kayla.txt",row.names = FALSE)

ryan_tweets<-cleanTweetsAndRemoveNAs(ryan_df$text)
write.table(ryan_tweets,"ryan_.txt",row.names = FALSE)

wayne_tweets<-cleanTweetsAndRemoveNAs(wayne_df$text)
write.table(wayne_tweets,"wayne.txt",row.names = FALSE)

adam_tweets<-cleanTweetsAndRemoveNAs(adam_df$text)
write.table(adam_tweets,"adam.txt",row.names = FALSE)

bindra_tweets<-cleanTweetsAndRemoveNAs(bindra_df$text)
write.table(bindra_tweets,"bindra.txt",row.names = FALSE)

bowie_tweets<-cleanTweetsAndRemoveNAs(bowie_df$text)
write.table(bowie_tweets,"bowie.txt",row.names = FALSE)

brianna_tweets<-cleanTweetsAndRemoveNAs(brianna_df$text)
write.table(brianna_tweets,"brianna.txt",row.names = FALSE)

christian_tweets<-cleanTweetsAndRemoveNAs(christian_df$text)
write.table(christian_tweets,"christian.txt",row.names = FALSE)

dipa_tweets<-cleanTweetsAndRemoveNAs(dipa_df$text)
write.table(dipa_tweets,"dipa.txt",row.names = FALSE)

elaine_tweets<-cleanTweetsAndRemoveNAs(elaine_df$text)
write.table(elaine_tweets,"elaine.txt",row.names = FALSE)

fabio_tweets<-cleanTweetsAndRemoveNAs(fabio_df$text)
write.table(fabio_tweets,"fabio.txt",row.names = FALSE)

haley_tweets<-cleanTweetsAndRemoveNAs(haley_df$text)
write.table(haley_tweets,"haley.txt",row.names = FALSE)

jake_tweets<-cleanTweetsAndRemoveNAs(jake_df$text)
write.table(jake_tweets,"jake.txt",row.names = FALSE)

jeff_tweets<-cleanTweetsAndRemoveNAs(jeff_df$text)
write.table(jeff_tweets,"jeff.txt",row.names = FALSE)

jemima_tweets<-cleanTweetsAndRemoveNAs(jemima_df$text)
write.table(jemima_tweets,"jemima.txt",row.names = FALSE)

mo_tweets<-cleanTweetsAndRemoveNAs(mo_df$text)
write.table(mo_tweets,"mo.txt",row.names = FALSE)

murray_tweets<-cleanTweetsAndRemoveNAs(murray_df$text)
write.table(murray_tweets,"murray.txt",row.names = FALSE)

neymar_tweets<-cleanTweetsAndRemoveNAs(neymar_df$text)
write.table(neymar_tweets,"neymar.txt",row.names = FALSE)

nia_tweets<-cleanTweetsAndRemoveNAs(nia_df$text)
write.table(nia_tweets,"nia.txt",row.names = FALSE)

omar_tweets<-cleanTweetsAndRemoveNAs(omar_df$text)
write.table(omar_tweets,"omar.txt",row.names = FALSE)

sakshi_tweets<-cleanTweetsAndRemoveNAs(sakshi_df$text)
write.table(sakshi_tweets,"sakshi.txt",row.names = FALSE)

whitlock_tweets<-cleanTweetsAndRemoveNAs(whitlock_df$text)
write.table(whitlock_tweets,"whitlock.txt",row.names = FALSE)

derek_tweets<-cleanTweetsAndRemoveNAs(derek_df$text)
write.table(derek_tweets,"derek.txt",row.names = FALSE)

erica_tweets<-cleanTweetsAndRemoveNAs(erica_df$text)
write.table(erica_tweets,"erica.txt",row.names = FALSE)


grasse_tweets<-cleanTweetsAndRemoveNAs(grasse_df$text)
write.table(grasse_tweets,"grasse.txt",row.names = FALSE)

shaunae_tweets<-cleanTweetsAndRemoveNAs(shaunae_df$text)
write.table(shaunae_tweets,"shaunae.txt",row.names = FALSE)

sindhu_tweets<-cleanTweetsAndRemoveNAs(sindhu_df$text)
write.table(sindhu_tweets,"sindhu.txt",row.names = FALSE)

closing_ceremony_tweets<-cleanTweetsAndRemoveNAs(closing_ceremony_df$text)
write.table(closing_ceremony_tweets,"closing_ceremony.txt",row.names = FALSE)








