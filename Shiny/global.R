library(tm)
library(wordcloud)
library(memoise)
library(googleVis)
library(ggplot2)

olympics<-list("Olympics Rio 2016"="olympics",
              "Olympic Opening Ceremony'"= "opening_ceremony",
              "Rio Olympics closing ceremony" = "closing_ceremony",
              "Micheal Phelps" ="phelps",
              "Justin Gatlin"= "gatlin",
              "Ashton Eaton" = "ashton",
              "Simone Biles" = "biles",
              "Katie Ledecky" = "katie",
              "Ryan Lochte" = "ryan",
              "Kayla Harrison" = "kayla",
              "Allyson Felix" = "allyson",
              "Brianna Rollins" = "brianna",
              "Tori Bowie" = "bowie",
              "Nia Ali" = "nia",
              "Haley Anderson" = "haley",
              "Jake Dalton" = "jake",
              "Jeff Henderson" = "jeff",
              "Christian Taylor" = "christian",
              "Usain Bolt"= "bolt",
              "Yohan Blake" = "blake",
              "Elaine Thompson" = "elaine",
              "Omar McLeod" = "omar",
              "Wayne van Niekerk"= "wayne",
              "Jemima Jelagat Sumgong" = "jemima",
              "Neymar" = "neymar",
              "Max Whitlock" = "whitlock",
              "Andy Murray" = "murray",
              "Mo Farah" = "mo",
              "Adam Peaty" = "adam",
              "Fabio Basile" = "fabio",
              "Shaunae Miller" = "shaunae",
              "Andre De Grasse" = "grasse",
              "Erica Wiebe" = "erica",
              "Derek Drouin" = "derek",
              "PV Sindhu" = "sindhu",
              "Sakshi Malik" = "sakshi",
              "Dipa Karmakar" ="dipa",
              "Abhinav Bindra" = "bindra"
              
              
)     

getTermMatrix <- memoise(function(category) {
  
  
  if (!(category %in% olympics))
    stop("Unknown category")
  
  text <- readLines(sprintf("./Tweets/%s.txt", category),
                    encoding="latin1",warn=FALSE)
  
  myCorpus = Corpus(VectorSource(text))
  myCorpus = tm_map(myCorpus, content_transformer(tolower))
  myCorpus = tm_map(myCorpus, removePunctuation)
  
  # remove URLs
  removeURL <- function(x) gsub("http[^[:space:]]*", "", x)
  myCorpus <- tm_map(myCorpus, content_transformer(removeURL))
  
  # remove anything other than English letters or space
  removeNumPunct <- function(x) gsub("[^[:alpha:][:space:]]*", "", x)
  myCorpus <- tm_map(myCorpus, content_transformer(removeNumPunct))
  
  #remove ucueu
  removeText<-function(x) gsub("ucueucue","",x)
  myCorpus <- tm_map(myCorpus, content_transformer(removeText))
  
  myCorpus = tm_map(myCorpus, removeNumbers)
  myCorpus = tm_map(myCorpus, removeWords,stopwords("en"))
  
  myCorpus = tm_map(myCorpus, removeWords,
                    c(stopwords("SMART"), "thy", "thou", "thee", "the", "and", "but"))
  
  myCorpus = tm_map(myCorpus, removeWords,
                    c(stopwords("SMART"), "ucueucueucueucueucueucueucueucueucueucueucueucueucueucueucueucueucueucue ", "ucueucueucueucueucueucue", "oduduru","ucueucueucueucueucueucueucueucueucueucueucueucueucueucueucueucueucueucue"))
  # remove extra whitespace
  myCorpus <- tm_map(myCorpus, stripWhitespace)
  
  myDTM = TermDocumentMatrix(myCorpus,
                             control = list(minWordLength = 1))
  
  
  
  m<-as.matrix(myDTM)
  
  sort(rowSums(m), decreasing = TRUE)
})


getEmotions <- memoise(function(category) {
  
  
  if (!(category %in% olympics))
    stop("Unknown category")
  
  data <-read.csv(sprintf("./Sentiment/%s.csv",category)) 
  
  data
})

getRetweets<- memoise(function(category) {
  
  
  if (!(category %in% olympics))
    stop("Unknown category")
  
  data <-read.csv(sprintf("./Retweets/%s.csv",category)) 
  
  data
})
