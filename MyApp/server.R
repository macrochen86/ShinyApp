library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

        # generate Poisson distribution plot and mean/variance
      
        data <- reactive ({
             x <- rpois(input$n,input$mu)
                       })
        
        output$plot1 <- renderPlot(barplot(table(data()),
                                           main = "Poisson distribution for input n and mu",
                                           xlab = "Events (x)",
                                           ylab = "Density"))
        output$meanOut <- renderText({mean(data())})
        output$varOut <- renderText({var(data())})

})
