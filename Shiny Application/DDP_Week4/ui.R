#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Hair and Eye Color of Students Data"),
    
    sidebarLayout(
        sidebarPanel(
            
            radioButtons("radio", label=h4("Choose an option"),
                         choices=list("Hair color" = 1, "Eye color" = 2), 
                         selected = 1),
            hr(),
            h4("Documentation"),
            h5("This is a Distribution of hair and eye color and sex in 592
               statistics students."),
            h5("Please, select an option above to view the frequency
               of the students at the University of Delaware,
               comparing their hair or eye color, by sex (male or female)."),
            h5("Take a look at right to find out the results.")
        ),
        
        # Show a plot of the distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
