
library(shiny)
library(ggplot2)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
   
    headerPanel("S&P 500 Moving Average Visualizer"),
    
    sidebarPanel(
      sliderInput("moving_avg",
                  "Number of Days:",
                  min = 1,
                  max = 75,
                  value = 14)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Output",plotOutput("plot")),
        tabPanel("Directions", 
                 tags$ol(
                    tags$li("The data emebedded in the R code came from Yahoo and it is the daily closing values of the S&P500 from January 2015 to October 24th, 2015."), 
                    tags$li("As you can see there is significant volatility/noise in the data making observing the trend in the stock market difficult"), 
                    tags$li("To help identify the trend we can smooth the data with moving averages."),
                    tags$li("Adjust the slider on the left to change the moving average period and see the result in real time on the chart."),
                    tags$li("Note if the moving average value is 5 the first 4 days will be the actual value of each day as the 5 day average cannot be calculated."),
                    tags$li("This applies for any N numbered days")
            )
          )
        )
      )
    )
  )
