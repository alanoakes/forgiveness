# libraries & encoding
library(shiny)
library(bslib)

# data
Lex_Ref <- read.csv('data/lexicon.csv', encoding = 'UTF-8')
Lex_Locations <- read.csv('data/StrongsLocations.csv', encoding = 'UTF-8')
Lex_Occurences <- read.csv('data/StrongsOccurences.csv', encoding = 'UTF-8')
Lex_WordUses <- read.csv('data/StrongsWordUsesCount.csv', encoding = 'UTF-8')

# front end
ui <- fluidPage(
  
  theme = bs_theme(version = 4, bootswatch = 'flatly'),
  titlePanel("Bible Word Review for 'Forgive'"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Using the below lexicon, use the radio buttons to either select all or specific Hebrew or Greek Strongs ID's to display how and where the Bible defines the word Forgive."),
      radioButtons("radio", label = h4('Radio Buttons'),
                   choices = c(
                     "View All Words" = 1,
                     "Select Certain Words" = 2),
                   selected = 1),
      selectInput("var",
                  label = h4('Select Certain Words'),
                  choices = Lex_Ref$Combo_Var,
                  selected = "H3722"),
      img(src = "BLB_Lexicon.PNG", width = '100%', height = 300),
      br(), br(),
      tags$a(href="www.blueletterbible.org//search/search.cfm?Criteria=forgive&t=KJV#s=s_primary_0_1", 'Data Source: KJV Search Results for "forgive"." Blue Letter Bible. Web. 10 Mar, 2021', target = 'blank'),
    fluid = FALSE, width = 4),
    
    mainPanel(
      tabsetPanel(type = "tabs",
        tabPanel("Strongs Counts", plotOutput("barplot")),
        tabPanel("Top Word Uses", plotOutput("barplot")),
        tabPanel("Locations")
      )
    )
  )
  
)

# back end
server <- function(input, output, session) {
  
}

shinyApp(ui, server)