# libraries & encoding
library(shiny)
library(bslib)

# data
Lex_Ref <- read.csv('data/lexicon.csv', encoding = 'UTF-8')
Lex_Locations <- read.csv('data/StrongsLocations.csv', encoding = 'UTF-8')
Lex_Occurences <- read.csv('data/StrongsOccurences.csv', encoding = 'UTF-8')
Lex_WordUses <- read.csv('data/StrongsWordUsesCount.csv', encoding = 'UTF-8')


ui <- fluidPage(
  
  theme = bs_theme(version = 4, bootswatch = 'flatly'),
  titlePanel('Bible Word Analysis for Forgive'),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select Hebrew or Greek word to display how and where the Bible defines the word Forgive."),
      br(),
      selectInput("var",
                  label = 'Choose variable to display',
                  choices = list(
                    "H3722 - כָּפַר - kāp̄ar" = "H3722",
                    "H5375 - נָשָׂא - nāśā'" = "H5375",
                    "H5545 - סָלַח - sālaḥ" = "H5545",
                    "H5546 - סַלָּח - sallāḥ" = "H5546",
                    "H5547 - סְלִיחָה - sᵊlîḥâ" = "H5547",
                    "G859 - ἄφεσις - aphesis" = "G859",
                    "G863 - ἀφίημι - aphiēmi" = "G863",
                    "G5483 - χαρίζομαι - charizomai" = "G5483"),
                  selected = "H3722"),
      tags$a(href="www.blueletterbible.org//search/search.cfm?Criteria=forgive&t=KJV#s=s_primary_0_1", 'Data Source: KJV Search Results for "forgive"." Blue Letter Bible. Web. 10 Mar, 2021', target = 'blank')
    ),
    mainPanel(textOutput('this is text'))
  )
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)