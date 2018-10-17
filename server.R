library(shiny)
server <- function(input, output) {
   dat <- reactive({
     if(input$type == "Normal"){
       rnorm(input$num1)}
     else{
     if(input$type == "Uniform"){
       runif(input$num1)
     }
     else{
       if(input$type == "Poisson"){
       rpois(input$num1, lambda = 1)
     }}}}
   )
  
    output$distPlot <- renderPlot({
      d <- density(dat())
      plot( d, col= "blue", xlab = "Numbers", ylab = "Frequency", main = "Distribution Plot", lwd = 4)
   })
    
    output$stats <- renderPrint({
      summary(dat())
    })
}
