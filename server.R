library(shiny);

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        # Expression that generates a histogram. The expression is
        # wrapped in a call to renderPlot to indicate that:
        #
        #  1) It is "reactive" and therefore should re-execute automatically
        #     when inputs change
        #  2) Its output type is a plot
               
        # Reactive expression to generate the requested distribution.
        # This is called whenever the inputs change. The output
        # functions defined below then all use the value computed from
        # this expression
        data <- reactive({
                dist <- switch(input$dist,
                               norm = rnorm,
                               unif = runif,
                               lnorm = rlnorm,
                               exp = rexp,
                               rnorm)
                
                dist(input$bins)
        })
              
        # Generate a plot of the data. Also uses the inputs to build
        # the plot label. Note that the dependencies on both the inputs
        # and the data reactive expression are both tracked, and
        # all expressions are called in the sequence implied by the
        # dependency graph
        output$distPlot <- renderPlot({
                dist <- input$dist
                bins <- input$bins
                
                hist(data(),
                     breaks = input$breaks,
                     main=paste('r', dist, '(', bins, ')', sep=''))
        })       
})
