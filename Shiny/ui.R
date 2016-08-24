library(shinydashboard)
library(shiny)

dashboardPage(
  
  dashboardHeader(title = "Olympics Rio 2016 "),
  dashboardSidebar(
    h3("Choose the Category"),
    selectInput("selection", "",
                choices = olympics),
    actionButton("update", "Change"),
    hr(),
    
    sidebarMenu(
      menuItem("Wordcloud",tabName = "wordcloud",icon = icon("cloud")),
      menuItem("Top Words",tabName = "barchart",icon = icon("bar-chart")),
      menuItem("Sentiments",tabName = "emotions",icon = icon("smile-o")),
      menuItem("Github Source Code", href="https://github.com/surajvv12/Cricket_sentiment_analysis_twitter/tree/master/Shiny", icon = icon("github")),
      menuItem("Follow us on :-", href="#", newtab=F),
      menuSubItem("Facebook", href="https://www.facebook.com/datasciencezing", icon = icon("facebook")),
      menuSubItem("@datasciencezing", href="https://twitter.com/datasciencezing", icon = icon("twitter")),
      menuSubItem("Blog", href="http://www.datascience-zing.com", icon=icon("hand-o-right"))
      
      
      
      
    )
  ),
  
  dashboardBody(
    
    tabItems(
      
      tabItem(tabName ="wordcloud",
              
              
              
              fluidRow(
                
                tabBox(title = "",width = 12,
                       
                       tabPanel(title = tagList(shiny::icon("comments"),"Tweets"),
                                
                                
                                box(plotOutput("wordcloud1",height=500,width = 300)),
                                
                                box(title = "Controls",
                                    sliderInput("freq","Minimum Frequency:",
                                                min = 1,  max = 50, value = 15),
                                    sliderInput("max","Maximum Number of Words:",
                                                min = 1,  max = 300,  value = 100)
                                )
                       )
                       
                       
                       
                       
                       
                       
                )
                
                
                
              )
      ),
      
      tabItem(tabName = "barchart",
              
              fluidRow(
                
                tabBox(title = "",width = 12,
                       
                       tabPanel(title = tagList(shiny::icon("heart"),"Reviews"),
                                
                                plotOutput("bar1")
                       ),
                       tabPanel(title = tagList(shiny::icon("twitter"),"Top 100 Retweets"),
                                
                                tableOutput("table1")
                       )
                       
                       
                       
                       
                )
                
                
              )
              
              
      ),
      
      tabItem(tabName = "emotions",
              
              fluidRow(
                
                tabBox(title = "",width = 12,
                       
                       tabPanel(title = tagList(shiny::icon("smile-o"),"Polarity"),
                                
                                htmlOutput("pie2")
                       ),
                       
                       tabPanel(title = tagList(shiny::icon("pie-chart"),"Emotions"),
                                
                                htmlOutput("pie1")
                       ),
                       
                       
                       tabPanel(title = tagList(shiny::icon("thumbs-o-up"),"Emotion Score"),
                                
                                plotOutput("score1")
                                
                       )
                       
                       
                )
                
                
              )
              
              
      )
      
      
      
      
      
      
      
      
    )
    
    
  )
)
