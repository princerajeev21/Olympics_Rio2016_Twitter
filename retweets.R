sindhu2<-as.data.frame(cbind(tweet=sindhu_df$text,retweets=sindhu_df$retweetCount))
sindhu2$retweets<-as.numeric(sindhu2$retweets)
sindhu2<-unique(sindhu2[order(-sindhu2$retweets),])
sindhu2<-sindhu2[1:100,]

write.csv(sindhu2,"sindhu.csv",row.names=FALSE)

