
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel("THE EFFECT OF THE LAW OF LARGE NUMBERS IN RANDOM DISTRIBUTIONS"),
  # Sidebar with a slider input for type of distributionT and slider input.
  # FOR number of bins
  sidebarLayout(
    sidebarPanel(
      fluidRow(column(8,
                      sliderInput("obs",
                                  "Number of Observations:",
                                  min = 10,
                                  max = 5000,
                                  value = 50))),
      fluidRow(column(8,
                      radioButtons("dist", "Distribution type:",
                                   c("Normal" = "Normal",
                                     "Uniform" = "Uniform",
                                     "Lognormal" = "Lognormal",
                                     "Exponential" = "Exponential"))))),
    # Show a plot of the generated distribution
    
    mainPanel(h5("Use the two controls on the left pane to select the type of"),
              h5("distribution and the sample size (number of observations)",
              h5("the chart adjust automatically to reflect the effect of sample size")),
             plotOutput("distPlot")
    )
  )	 
)
)