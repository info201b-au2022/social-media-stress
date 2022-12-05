library("plotly")
library("tidyr")
library("dplyr")
library("stringr")

server <- function(input, output) {
  output$general_chart <- renderPlotly({
    print(input$xvar)
    to_plot <- pivot_longer(social_media, cols = input$xvar, names_to = "Selected", values_to = "Percentage")
    chart2 <- ggplot(to_plot, aes(fill = Name, y = Name, x = Percentage)) +
      geom_bar(position = "dodge", stat = "identity") +
      labs(title = "Social Media Platforms",
          x = input$xvar,
          y = 'Platforms') +
      theme(legend.position="none")

    p <- ggplotly(chart2)

    return(p)
  })
}
