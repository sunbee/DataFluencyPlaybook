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
  # Style elements
  tags$head( # ITTO grid elements
    tags$style(HTML("
                  .col-sm-3, .col-sm-9 {
                    padding-right: 5px;
                    padding-left: 5px;
                    padding-top: 3px;
                    padding-bottom: 3px;
                  }
                    "))
  ),
  tags$head( # Button hover and focus
    tags$style(HTML("
                    .btn:hover {
                      background-color: green;
                      color: darkorange;
                      font-weight: bold;
                    }
                    .btn:focus {
                      background-color: darkorange;
                      color: darkorange;
                      font-weight: bold;
                    }
                    "))
  ),
  tags$head( # ITTO Planning section - banner
    tags$style(HTML("
                  #Plan {
                    background-color: #ffa500;
                    text-align: center;
                    padding: 2px;
                  }
                    "))
  ),
  tags$head( # ITTO Planning section - buttons
    tags$style(HTML("
                    #Survey, #Quadrants, #Curricula, #Personas {
                      background-color: #fed8b1;
                      width: 100%;
                    }
                    "))
  ),
  tags$head( # ITTO Launch section - banner
    tags$style(HTML("
                  #Launch {
                    background-color: #ffff00;
                    text-align: center;
                    padding: 2px;
                  }
                    "))
  ),
  tags$head( # ITTO Launch section - buttons
    tags$style(HTML("
                    #Boilerplate, #Mentor, #Cohort {
                      background-color: #ffff99;
                      width: 100%;
                    }
                    "))
  ),
  tags$head( # ITTO Execution section - banner
    tags$style(HTML("
                  #Execute {
                    background-color: #00ffff;
                    text-align: center;
                    padding: 2px;
                  }
                    "))
  ),
  tags$head( # ITTO Execution section - buttons
    tags$style(HTML("
                    #Tracker, #Kanban, #CheckIn, #Certificate {
                      background-color: #e0ffff;
                      width: 100%;
                    }
                    "))
  ),
  tags$head( # ITTO display cards - each card
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
  tags$head( # ITTO display cards - header with title
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
  tags$head( # ITTO display cards - icon and write-up box
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
  tags$head( # ITTO display cards - write-ups
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
  tags$head( # ITTI display cards - bulleted lists
    tags$style(HTML("
                    ol, ul {
                      list-style-position: outside;
                      padding-left: 1em;
                    }
                 "))
  ),
  
  # The ITTO grid
  fluidRow(
    column(width=2),
    column(width=9, 
           h4("Grid"), 
           h6("Select from Tools & Techniques to see the Inputs and Outputs")),
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
  
  # The cards for ITTO (Inputs, Tools & Techniques, Output)
  fluidRow(
    column(width=1),
    column(width=10, htmlOutput("ITTO")),
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
  absolutePanel(right=20, bottom=0, height=360, width=270, 
                draggable=TRUE, fixed=TRUE, style="opacity:0.72",
    wellPanel(
      h4("Multimedia Sample"),
      h6("View in new window here"),
      htmlOutput("frame"),
    )),
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    # Fixed banners    
    output$Plan <- renderText({
      "I. Plan"
    })
    output$Launch <- renderText({
      "II. Launch"
    })
    output$Execute <- renderText({
      "III. Execute"
    })
    
    # The section header is initialized here and reactively changed.
    output$ITTO <- renderUI({
      h4("Tools & Techniques: ")
    })
    
    # The embedded content (google doc) is initialized here and reactively changed.
    output$frame <- renderUI(
      tags$iframe(
        src="https://docs.google.com/presentation/d/e/2PACX-1vQNjeNAH-YuNzJLBSRpuhMcv21fbwATK1dJvGgCb_-tr7YOq6IPTw7yR_84iapMAyW536oLfjs5Ef8F/embed?start=false&loop=false&delayms=3000",  
        width="100%",
        height="100%",
        frameborder=1,
        #<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQNjeNAH-YuNzJLBSRpuhMcv21fbwATK1dJvGgCb_-tr7YOq6IPTw7yR_84iapMAyW536oLfjs5Ef8F/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
      )  
    )
    
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
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Baseline Survey", style="color:darkorange"))
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
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("4 Quadrants", style="color:darkorange"))
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
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Curricula", style="color:darkorange"))
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
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Learner Personas", style="color:darkorange"))
      )
      
    })
    
    observeEvent(input$Boilerplate, {
      print("Boilerplate button pressed")
      output$LoremIpsum1 <- renderUI(
        boilerplate_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        boilerplate_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        boilerplate_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Email Boilerplate", style="color:darkorange"))
      )
      
    })
    
    observeEvent(input$Mentor, {
      print("Mentor button pressed")
      output$LoremIpsum1 <- renderUI(
        mentor_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        mentor_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        mentor_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Mentor", style="color:darkorange"))
      )
      
    })
    
    observeEvent(input$Cohort, {
      print("Cohort button pressed")
      output$LoremIpsum1 <- renderUI(
        cohort_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        cohort_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        cohort_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Cohort", style="color:darkorange"))
      )
    })
    
    observeEvent(input$Tracker, {
      print("Tracker button pressed")
      output$LoremIpsum1 <- renderUI(
        tracker_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        tracker_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        tracker_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Master Tracker", style="color:darkorange"))
      )
    })

    observeEvent(input$Kanban, {
      print("Kanban button pressed")
      output$LoremIpsum1 <- renderUI(
        kanban_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        kanban_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        kanban_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Kanban Board", style="color:darkorange"))
      )
    })

    observeEvent(input$CheckIn, {
      print("Check-in button pressed")
      output$LoremIpsum1 <- renderUI(
        checkIn_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        checkIn_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        checkIn_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Check-In", style="color:darkorange"))
      )
    })

    observeEvent(input$Certificate, {
      print("Certificate button pressed")
      output$LoremIpsum1 <- renderUI(
        certificate_writeUp_in
      )
      output$LoremIpsum2 <- renderUI(
        certificate_writeUp_prc
      )
      output$LoremIpsum3 <- renderUI(
        certificate_writeUp_out
      )
      output$ITTO <- renderUI(
        h4("Tools & Techniques:", tags$b("Certificate", style="color:darkorange"))
      )
    })
    
} # server

# Run the application 
shinyApp(ui = ui, server = server)
