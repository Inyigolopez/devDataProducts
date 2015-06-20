library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Developing Data Products Proyect!!"),
        
        # Sidebar with a slider input for the number of bins
        sidebarLayout(
                sidebarPanel(
                        sliderInput("bins",
                                    "Number of observations:",
                                    min = 10,
                                    max = 500,
                                    value = 250),
                        br(),
                        sliderInput("breaks",
                                    "Number of breaks:",
                                    min = 2,
                                    max = 50,
                                    value = 20),
                        br(),
                        radioButtons("dist", "Select a distribution type:",
                                     c("Normal" = "norm",
                                       "Uniform" = "unif",
                                       "Log-normal" = "lnorm",
                                       "Exponential" = "exp"))
                ),
                
                # Show a plot of the generated distribution
                mainPanel(plotOutput("distPlot"))
        )
        
        
))
