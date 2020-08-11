library(shiny)
library(ggplot2)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
    # Load the dataset
    student_data <- data.frame(HairEyeColor)
    
    # Create a reactive context
    output$distPlot <- renderPlot({
        
        # Get radio button selection
        radio_choice <- input$radio
        
        if(radio_choice == 1) {
            bar_colors <- c("black", "brown", "red", "yellow")
            legend_title <- "Hair color"
            fill_data <- student_data$Hair
        }
        else {
            bar_colors <- c("brown", "blue", "yellow", "green")
            legend_title <- "Eye color"
            fill_data <- student_data$Eye
        }
        
        ggplot(student_data, aes(factor(Sex), 
                                 Freq, 
                                 fill=fill_data)) +
            geom_bar(stat="identity", position="dodge") +
            scale_fill_manual(legend_title, values = bar_colors)
    })
    
})
