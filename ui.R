library(shiny)

# Define UI for application that draws a histogram for a choosen variable from 
# R dataset iris  

shinyUI(fluidPage(
  
  # Application title
  titlePanel(h4("Dataset Histogram Plotting",align="center")),
  "This App plot a histogram for the R dataset iris. iris is an R data frame 
   with 4 numeric variables and one factor variable: Sepal.Length,Sepal.Width,
   Petal.Length,Petal.Width and Species with 150 observations.The App plot a 
   histogram for the numeric variable selected by the user from the choice 
   box 1 .The histogram pins are selected in the slider bar, the radio buttons 
   let the user select the histogram color. ",
  
               
  # Sidebar with  : selectInput for iris variable choices
  #               : sliderInput for histogram number of bins 
  #               : radioButtons for histogram colors
  sidebarLayout(
    sidebarPanel(
      selectInput("variable","1.Select the iris variable",
                  choices=c("Sepal.Length"=1,"Sepal.Width"=2,"Pethal.Length"=3,
                  "Pethal.Width"=4)),
      br(),            
      sliderInput("bins","2.Select the number of bins",min=5,max=30,value=20),
      br(),
      radioButtons("color","3.Select the histogram color",choices=c("red","green",
                   "yellow"),selected="yellow")
      ),
      
           
  # Show a histogram  of an iris dataset variable.  
   
    mainPanel(
      plotOutput("varhist")
    )
  )
))