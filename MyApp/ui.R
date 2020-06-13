
library(shiny)

# Define UI for application that draws Poisson distribution 
shinyUI(fluidPage(

    # Application title
    titlePanel("mean and variance of Poisson distribution"),

    # Sidebar with a slider input for number of random variables and mu
    sidebarLayout(
        sidebarPanel(
            sliderInput("n","number of random variables", 10,1000,100),
            sliderInput("mu","mu=lamda*t:", 0.1,10,1),
            h3("Poisson Mean"),
            textOutput("meanOut"),
            h3("Poisson Variance"),
            textOutput("varOut"),
            h4("You can verify mean/variance of Poisson distribution equals mu when input n is large enough")
        ),

        # Show a plot of Poisson distribution and associated mean/variance 
        mainPanel(
            h3("This is a demo to plot Poisson distribution and calculate mean/variance"),
            h3("Please input random variablble number n and mu(or lamda) for POisson distribution"),
            plotOutput("plot1")
             )
    )
))
