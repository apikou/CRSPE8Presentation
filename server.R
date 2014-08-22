library(shiny)

# Define server logic required to draw a histogram for the choosen iris variable.
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$varhist <- renderPlot({
   var <- as.numeric(input$variable)
   # draw the histogram with the specified number of bins
   hist(iris[,var],breaks=seq(min(iris[,var]),max(iris[,var]),l=input$bins+1),
        xlab=names(iris[var]),main="R iris Dataset Histogram",col=input$color)
  }) 
 })