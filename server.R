library(shiny)

#tries <<- reactiveValues()

#data.frame('tries' = 0, 'units' = factor('days', levels=c('days', 'hours', 'secs')))


shinyServer(
        function(input, output){
        units <- reactive({as.character(input$sel_units)})
        temp <- reactive({as.numeric(input$date_end - input$date_start, units=units())})
        output$test_out <- renderText({temp()})
#        output$test_out <- renderText({as.numeric(tries)})
#        rbind(tries, as.data.frame(temp(), units()))
#        tries <<- reactive({c(tries, as.numeric(input$date_end-input$date_start, units='days'))})
#        output$weird_plot <- renderPlot({plot(1:length(tries), tries)})
    }
)
