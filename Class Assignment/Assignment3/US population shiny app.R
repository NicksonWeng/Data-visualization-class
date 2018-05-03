library(datasets)
library(shiny)
library(ggplot2)
uspop <- uspop
uspop <- cbind(seq(1790,1970, length.out = 19),as.numeric(uspop))
colnames(uspop)<- c("year", "pop")
uspop <- data.frame(uspop)

ui <- fluidPage(
  titlePanel("US pop"),
  sliderInput("range", "Range of Year:",
              min = 1790,
              max = 1970,
              step = 10,
              value = c(1790,1970)),
  plotOutput("hist")
)

server <- function(input, output){
  range <- reactive({
    input$range
  })
  output$hist <- renderPlot(ggplot(uspop, aes(x = year, y = pop))+
                              geom_bar(stat = "identity")+
                              xlim(input$range)
                            )
}



shinyApp(ui, server)