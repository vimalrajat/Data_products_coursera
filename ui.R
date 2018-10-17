library(shiny)
ui <- fluidPage(
   
   # Application title
   h1("Random Number Generation"),
   h4("This is an app that generates random numbers on the basis of attributes selected"),
   
   # Sidebar with a slider input for number of bins    
      sidebarPanel(
         sliderInput(inputId = "num1",
                     label = "Select Size of the Sample",
                     min = 1,
                     max = 500,
                     value = 30)),
      radioButtons(
        inputId = "type", label = "Select distribution type",
        choices = c("Normal","Uniform","Poisson"),
        selected = c("Normal")),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot",width = "800px",height = "600px"),
         verbatimTextOutput("stats")
         
      )
   )
