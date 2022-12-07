library("plotly")
library("tidyr")
library("dplyr")
library("stringr")
library("ggplot2")

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
  
  output$survey_chart <- renderPlotly({
    
    survey_plot <- survey_csv %>%
      select(Global.impact.of.social.media.on.daily.life.2019, Increased, Decreased, Had.no.impact) %>%
      gather(key = Impact, value = Percentage, -Global.impact.of.social.media.on.daily.life.2019) 
    
    chart1 <- ggplot(data = survey_plot) + 
      geom_col(mapping = aes(x = Percentage, y = Global.impact.of.social.media.on.daily.life.2019, fill = Impact)) +
      scale_fill_brewer(labels = c("Decreased", "Had no impact", "Increased"), palette = "Set3") +
      labs(title = "Global Impact of Social Media on Daily Life (2019)",
           y = "Daily Life",
           x = "Percentage (%)",
           caption = "Measure of social media impact on daily life of individuals ages 16-64 worldwide as of February 2019.") 
    
    p2 <- ggplotly(chart1)
    
    return(p2)
  })
}

