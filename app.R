#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source("corpus.R")

# Define UI for application that draws a histogram
ui <- fluidPage(
  tags$head(
    tags$style(HTML("
                  .col-sm-3, .col-sm-9 {
                    padding-right: 5px;
                    padding-left: 5px;
                    padding-top: 3px;
                    padding-bottom: 3px;
                  }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                  #Plan {
                    background-color: #ffa500;
                    text-align: center;
                    padding: 2px;
                  }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    #Survey, #Quadrants, #Curricula, #Personas {
                      background-color: #fed8b1;
                      width: 100%;
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                  #Launch {
                    background-color: #ffff00;
                    text-align: center;
                    padding: 2px;
                  }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    #Boilerplate, #Mentor, #Cohort {
                      background-color: #ffff99;
                      width: 100%;
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                  #Execute {
                    background-color: #00ffff;
                    text-align: center;
                    padding: 2px;
                  }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    #Tracker, #Kanban, #CheckIn, #Certificate {
                      background-color: #e0ffff;
                      width: 100%;
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    .Card {
                      width: 100%;                  /* Set width of cards */
                      border: 1px solid #EF9A9A;    /* Set up Border */
                      border-radius: 4px;           /* Slightly Curve edges */
                      overflow: hidden;             /* Fixes the corners */
                      display: flex;                /* Children use Flexbox */
                      flex-direction: column;       /* Rotate Axis */
                      margin: 3px
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    .Header {
                      color: #D32F2F;
                      text-align: center;
                      font-size: 12px;
                      font-weight: 600;
                      border-bottom: 1px solid #EF9A9A;
                      background-color: #FFEBEE;
                      padding: 5px 10px;
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    .Inform {
                      display: flex;              /* Children use Flexbox */
                      flex-direction: column;     /* Rotate Axis to Vertical */
                      justify-content: center;    /* Group Children in Center */
                      align-items: center;        /* Group Children in Center (+axis) */
                      padding: 15px 0;            /* Add padding to the top/bottom */
                      font-size: 12px;
                      font-weight: 600;
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    #LoremIpsum1, #LoremIpsum2, #LoremIpsum3 {
                      padding: 28px;
                      font-family: sans-serif;
                      font-size: 12px;
                      margin: 1px;
                      padding: 3px;
                    }
                    "))
  ),
  tags$head(
    tags$style(HTML("
                    ol, ul {
                      list-style-position: outside;
                      padding-left: 1em;
                    }
                 "))
  ),
  fluidRow(
    column(width=2),
    column(width=9, h4("Hello!")),
    column(width=1),
  ),
  fluidRow(
      column(width=2),
      column(
        width=9,
        textOutput("Plan"),
      ),
      column(width=1)
  ),
  fluidRow(
      column(width=2),
      column(
        width=3,
        actionButton("Survey", "Baseline Survey", icon("poll-h"))
      ),
      column(
        width=3,
        actionButton("Quadrants", "4 Quadrants", icon("chart-area"))
      ),
      column(
        width=3,
        actionButton("Curricula", "Curricula", icon("cubes"))
      ),
      column(width=1),
  ),
  fluidRow(
      column(width=2),
      column(
        width=9,
        actionButton("Personas", "Learner Personas", icon("users-cog"))
      ),
      column(width=1),
  ),
  fluidRow(
      column(width=2),
      column(
        width=9,
        textOutput("Launch"),
      ),
      column(width=1)
  ),
  fluidRow(
      column(width=2),
      column(
        width=3,
        actionButton("Boilerplate", "Email Boilerplate", icon("envelope-open-text"))
      ),
      column(
        width=3,
        actionButton("Mentor", "Mentor", icon("chalkboard-teacher"))
      ),
      column(
        width=3,
        actionButton("Cohort", "Cohort", icon("graduation-cap"))
      ),
      column(width=1),
  ),
  fluidRow(
    column(width=2),
    column(
      width=9,
      textOutput("Execute"),
    ),
    column(width=1)
  ),
  fluidRow(
    column(width=2),
    column(
      width=3,
      actionButton("Tracker", "Master Tracker", icon("route"))
    ),
    column(
      width=3,
      actionButton("Kanban", "Kanban Board", icon("clipboard-check"))
    ),
    column(
      width=3,
      actionButton("CheckIn", "Check-In", icon("hourglass-end"))
    ),
    column(width=1),
  ),
  fluidRow(
    column(width=2),
    column(
      width=9,
      actionButton("Certificate", "Certificate", icon("certificate"))
    ),
    column(width=1),
  ),
  fluidRow(
    column(width=1),
    column(width=10, h4("Tools & Techniques")),
    column(width=1),
  ),
  fluidRow(
    column(width=1),
    column(width=10,
     tags$div(class="container", style="width: 100%; display: flex; padding: 0px",  
              tags$div(class="Card", 
                       tags$div(class="Header", "Input"),
                       tags$div(class="Inform",
                                icon("sign-in-alt", "fa-3x"),
                                tags$p(uiOutput("LoremIpsum1")))),
              tags$div(class="Card", 
                       tags$div(class="Header", "Process"),
                       tags$div(class="Inform",
                                icon("whmcs", "fa-3x"),
                                tags$p(uiOutput("LoremIpsum2")))),
              tags$div(class="Card",
                       tags$div(class="Header", "Output"),
                       tags$div(class="Inform",
                                icon("sign-out-alt", "fa-3x"),
                                tags$p(uiOutput("LoremIpsum3")))))
    ),
    column(width=1)
  ),
  fluidRow(
    HTML('<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vRNa6niWGtwfRo2WBg_uVO0Atp0xzpWSAcTOZV0zBek4QBEYlKhSwTmlb4X0b0leEpuWeHUzV_jc9jx/embed?start=true&loop=true&delayms=3000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>')    
  ),
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$Plan <- renderText({
      "Plan"
    })
    output$Launch <- renderText({
      "Launch"
    })
    output$Execute <- renderText({
      "Execute"
    })
    
    observeEvent(input$Survey, {
      print("Survey button pressed")
      output$LoremIpsum1 <- renderUI(
        survey_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        survey_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        survey_writeUp_out
      )
    })
    
    observeEvent(input$Quadrants, {
      print("4 Quadrants button pressed")
      output$LoremIpsum1 <- renderUI(
        quadrants_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        quadrants_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        quadrants_writeUp_out
      )
    })
    
    observeEvent(input$Curricula, {
      print("Curricula button pressed")
      output$LoremIpsum1 <- renderUI(
        curricula_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        curricula_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        curricula_writeUp_out
      )
    })
    
    observeEvent(input$Personas, {
      print("Personas button pressed")
      output$LoremIpsum1 <- renderUI(
        personas_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        personas_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        personas_writeUp_out
      )
    })
    
} # server

# Run the application 
shinyApp(ui = ui, server = server)
