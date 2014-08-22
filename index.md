---
title       : DEVELOPPING DATA PRODUCTS
subtitle    : COURSERA COURSE PROJECT
author      : apikou
job         : 2014-08-21          
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Presentation Goal: 


1. This presentation is a descrription of a simple shiny application, that uses 
 some of the shiny package functions ,in order to plot a histogram for a variable selected from the R dataset iris . The app allows also the user to select the histogram pins number and its color.   
2. This presentation is the object of an assignment required by the Data products
course for COURSERA Data Science Specialisation offred by JOHNS HOPKINS bloombergschool of public health.
3. The application can be accessed at this URL:
http://apikou.shinyapps.io/project

---

## Application Description :

1. This is a simple application that shows how to plot usiny some shiny functions like plotOutput() to disply a plot, renderPlot() to render the plot,and allow the app user to make choices using the input widgets selectInput(),sliderInput(),
radioButtons().
2. The App is limited to the dataset iris part of R base package.


```r
str(iris)
```

```
## 'data.frame':	150 obs. of  5 variables:
##  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
##  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
##  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
##  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
##  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```

3. The App makes plot for the dataset numeric variables only : Sepal.Length ,
Sepal.Width, Petal.Length, Petal.Width .

---

## App Underlying Code :



```r
# shinyServer(function(input, output) {
#   output$varhist <- renderPlot({
#   var <- as.numeric(input$variable)
#   hist(iris[,var],breaks=seq(min(iris[,var]),max(iris[,var]),l=input$bins+1),
#        xlab=names(iris[var]),main="R iris Dataset Histogram",col=input$color)
#     })
#  })
```

- The Expression that generates the histogram is wrapped in a call to renderPlot
  inside which the regular hist() function is called . Notice that the var in 
  iris[,var] is the iris column number, which should be numeric for hist() 
  funtion to work , the as.numeric() is used for that purpose.
  
---

## Screenshot :
 
 Go to : http://apikou.shinyapps.io/project
 
---


