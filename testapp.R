library(C3)
library(shiny)

runApp(list(
  ui = bootstrapPage(
    #actionButton("update","update gauge"),
    
  #  includeCSS("timeSeries.css"),
    #includeHTML("timeSeries.html"),
    
    # example use of the automatically generated output function
    fluidRow(column(width =12,d3HistogramOutput("gauge1")))
    
  ),
  server = function(input, output) {
    
    # reactive that generates a random value for the gauge
    # value = reactive({
    #   input$update
    #   round(runif(1,0,100),2)
    # })
    
    # example use of the automatically generated render function
    output$gauge1 <- renderD3Histogram({ 
      # C3Gauge widget
      dataset <- data.frame(lpu = c('lpu1','lpu2','lpu3'), amount = c(20,40,60))
      
      d3Histogram(dataset = dataset)
    })
  }
  
))