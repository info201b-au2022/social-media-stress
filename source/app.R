library("shiny")

source("ui.R")

server <- function(input, output) {
}

app <- shinyApp(ui = ui, server = server)

runApp(app)
