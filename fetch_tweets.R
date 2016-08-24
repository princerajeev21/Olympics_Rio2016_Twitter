library(twitteR)
l

api_key<-"lStOg77bPMtpdLUsdiiefLD94"
api_secret<-"n2Q5NMMK1Euvr75G6mgTdS8CIH3gY51N5Er7MCarSYkV4GpXY2"
access_token<-"3002922293-KCGfPVZmJ0fhxr9CUlO45xtSjtBfSwMvqI4FJnk"
acess_token_secret<-"iHGRmAhYAmzxU0hHXCL2eNIWYyBhQHJajyeiKJ6JfqBxV"

setup_twitter_oauth(api_key,api_secret,access_token,acess_token_secret)

olympic_opening_ceremony_tweets<-searchTwitter('Olympic Opening Ceremony',since = '2016-08-04',until = '2016-08-07',lan="en",n = 10000)
olympic_opening_ceremony_df<-twListToDF(olympic_opening_ceremony_tweets)



Olympics_tweets<-searchTwitter('Olympics Rio 2016',since = '2016-08-04',until = '2016-08-14',lan="en",n=15000)
olympic_df<-twListToDF(Olympics_tweets)

Olympics_tweets2<-searchTwitter('Olympics Rio 2016',since = '2016-08-10',until = '2016-08-20',lan="en",n=15000)
olympic_df2<-twListToDF(Olympics_tweets2)



phelps_tweets<-searchTwitter('Micheal Phelps',since = '2016-08-04',until = '2016-08-14',lan="en",n=15000)
phelps_df<-twListToDF(phelps_tweets)


phelps_tweets2<-searchTwitter('Micheal Phelps',since = '2016-08-08',until = '2016-08-20',lan="en",n=15000)
phelps_df2<-twListToDF(phelps_tweets2)


bolt_tweets<-searchTwitter('Usain Bolt',since = '2016-08-04',until = '2016-08-17',lan="en",n=15000)
bolt_df<-twListToDF(bolt_tweets)

bolt_tweets2<-searchTwitter('Usain Bolt',since = '2016-08-15',until = '2016-08-20',lan="en",n=10000)
bolt_df2<-twListToDF(bolt_tweets2)

gatlin_tweets<-searchTwitter('Justin Gatlin',since = '2016-08-04',until = '2016-08-17',lan="en",n=15000)
gatlin_df<-twListToDF(gatlin_tweets)

gatlin_tweets2<-searchTwitter('Justin Gatlin',since = '2016-08-10',until = '2016-08-20',lan="en",n=15000)
gatlin_df2<-twListToDF(gatlin_tweets2)

blake_tweets<-searchTwitter('Yohan Blake',since = '2016-08-04',until = '2016-08-17',lan="en",n=15000)
blake_df<-twListToDF(blake_tweets)

blake_tweets2<-searchTwitter('Yohan Blake',since = '2016-08-10',until = '2016-08-20',lan="en",n=10000)
blake_df2<-twListToDF(blake_tweets2)

wayne_tweets<-searchTwitter('Wayne van Niekerk',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
wayne_df<-twListToDF(wayne_tweets)

katie_tweets<-searchTwitter('Katie Ledecky',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
katie_df<-twListToDF(katie_tweets)

ryan_tweets<-searchTwitter('Ryan Lochte',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
ryan_df<-twListToDF(ryan_tweets)

kayla_tweets<-searchTwitter('Kayla Harrison',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
kayla_df<-twListToDF(kayla_tweets)

allyson_tweets<-searchTwitter('Allyson Felix',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
allyson_df<-twListToDF(allyson_tweets)

allyson_tweets2<-searchTwitter('Allyson Felix',since = '2016-08-15',until = '2016-08-20',lan="en",n=5000)
allyson_df2<-twListToDF(allyson_tweets2)

ashton_tweets<-searchTwitter('Ashton Eaton',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
ashton_df<-twListToDF(ashton_tweets)

ashton_tweets2<-searchTwitter('Ashton Eaton',since = '2016-08-12',until = '2016-08-20',lan="en",n=10000)
ashton_df2<-twListToDF(ashton_tweets2)

biles_tweets<-searchTwitter('Simone Biles',since = '2016-08-04',until = '2016-08-17',lan="en",n=15000)
biles_df<-twListToDF(biles_tweets)

haley_tweets<-searchTwitter('Haley Anderson',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
haley_df<-twListToDF(haley_tweets)

jake_tweets<-searchTwitter('Jake Dalton',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
jake_df<-twListToDF(jake_tweets)

jemima_tweets<-searchTwitter('Jemima Jelagat Sumgong',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
jemima_df<-twListToDF(jemima_tweets)


elaine_tweets<-searchTwitter('Elaine Thompson',since = '2016-08-04',until = '2016-08-18',lan="en",n=10000)
elaine_df<-twListToDF(elaine_tweets)

omar_tweets<-searchTwitter('Omar McLeod',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
omar_df<-twListToDF(omar_tweets)

adam_tweets<-searchTwitter('Adam Peaty',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
adam_df<-twListToDF(adam_tweets)

mo_tweets<-searchTwitter('Mo Farah',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
mo_df<-twListToDF(mo_tweets)

mo_tweets2<-searchTwitter('Mo Farah',since = '2016-08-10',until = '2016-08-20',lan="en",n=5000)
mo_df2<-twListToDF(mo_tweets2)


murray_tweets<-searchTwitter('Andy Murray',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
murray_df<-twListToDF(murray_tweets)

whitlock_tweets<-searchTwitter('Max Whitlock',since = '2016-08-04',until = '2016-08-17',lan="en",n=10000)
whitlock_df<-twListToDF(whitlock_tweets)

jeff_tweets<-searchTwitter('Jeff Henderson',since = '2016-08-04',until = '2016-08-17',lan="en",n=5000)
jeff_df<-twListToDF(jeff_tweets)

christian_tweets<-searchTwitter('Christian Taylor',since = '2016-08-10',until = '2016-08-18',lan="en",n=5000)
christian_df<-twListToDF(christian_tweets)

brianna_tweets<-searchTwitter('Brianna Rollins',since = '2016-08-10',until = '2016-08-18',lan="en",n=5000)
brianna_df<-twListToDF(brianna_tweets)

bowie_tweets<-searchTwitter('Tori Bowie',since = '2016-08-10',until = '2016-08-18',lan="en",n=5000)
bowie_df<-twListToDF(bowie_tweets)

nia_tweets<-searchTwitter('Nia Ali',since = '2016-08-10',until = '2016-08-18',lan="en",n=5000)
nia_df<-twListToDF(nia_tweets)

fabio_tweets<-searchTwitter('Fabio Basile',since = '2016-08-04',until = '2016-08-18',lan="en",n=5000)
fabio_df<-twListToDF(fabio_tweets)

neymar_tweets<-searchTwitter('Neymar',since = '2016-08-04',until = '2016-08-18',lan="en",n=5000)
neymar_df<-twListToDF(neymar_tweets)

neymar_tweets2<-searchTwitter('Neymar',since = '2016-08-10',until = '2016-08-20',lan="en",n=10000)
neymar_df2<-twListToDF(neymar_tweets2)

dipa_tweets<-searchTwitter('Dipa Karmakar',since = '2016-08-04',until = '2016-08-18',lan="en",n=10000)
dipa_df<-twListToDF(dipa_tweets)

bindra_tweets<-searchTwitter('Abhinav Bindra',since = '2016-08-04',until = '2016-08-18',lan="en",n=10000)
bindra_df<-twListToDF(bindra_tweets)

sakshi_tweets<-searchTwitter('Sakshi Malik',since = '2016-08-04',until = '2016-08-18',lan="en",n=10000)
sakshi_df<-twListToDF(sakshi_tweets)

shaunae_tweets<-searchTwitter('Shaunae Miller',since = '2016-08-04',until = '2016-08-18',lan="en",n=10000)
shaunae_df<-twListToDF(shaunae_tweets)

grasse_tweets<-searchTwitter('Andre De Grasse',since = '2016-08-04',until = '2016-08-20',lan="en",n=10000)
grasse_df<-twListToDF(grasse_tweets)

erica_tweets<-searchTwitter('Erica Wiebe',since = '2016-08-04',until = '2016-08-20',lan="en",n=5000)
erica_df<-twListToDF(erica_tweets)

derek_tweets<-searchTwitter('Derek Drouin',since = '2016-08-04',until = '2016-08-20',lan="en",n=5000)
derek_df<-twListToDF(derek_tweets)

sindhu_tweets<-searchTwitter('PV Sindhu',since = '2016-08-10',until = '2016-08-20',lan="en",n=10000)
sindhu_df<-twListToDF(sindhu_tweets)

closing_ceremony_tweets<-searchTwitter('Rio Olympics closing ceremony',since = '2016-08-20',until = '2016-08-22',lan="en",n=10000)
closing_ceremony_df<-twListToDF(closing_ceremony_tweets)




