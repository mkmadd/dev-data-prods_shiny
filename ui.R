library(shiny)

shinyUI(fluidPage(theme = "bootstrap.min.css", 
    titlePanel("Time Differential"),
    sidebarLayout(
        sidebarPanel(align='center',
#            h1('Select two different dates:'),
#            numericInput('id1', 'Numeric input, labeled id1', 5, min=0, max=10, step=1),
#            checkboxGroupInput('id2', 'Checkbox', c('Value 1'='1', 'Value 2'='2', 'Value 3'='3')),
            p('Select starting date:'),
            fluidRow(
                column(4, offset=4,
                       dateInput('date_start', NULL, value = "2014-06-22", format = "mm/dd/yy"))
#                 column(2, offset=1,
#                     fluidRow(
#                        column(10, numericInput('hour_start', NULL, 12, min=0, max=23, step=1)),
#                        column(1, offset=1, ':')
#                     )
#                 ),
#                 column(2,
#                        fluidRow(
#                            column(10, numericInput('min_start', NULL, 0, min=0, max=59, step=1)),
#                            column(1, offset=1, ':')
#                        )
#                 ),
#                 column(2,
#                        numericInput('sec_start', NULL, 0, min=0, max=59, step=1))
            ),
            p('Select ending date:'),
            fluidRow(
                column(4, offset=4,
                       dateInput('date_end', NULL, format = "mm/dd/yy"))
#                 column(2, offset=1,
#                        fluidRow(
#                            column(10, numericInput('hour_end', NULL, 12, min=0, max=23, step=1)),
#                            column(1, offset=1, ':')
#                        )
#                 ),
#                 column(2,
#                        fluidRow(
#                            column(10, numericInput('min_end', NULL, 0, min=0, max=59, step=1)),
#                            column(1, offset=1, ':')
#                        )
#                 ),
#                 column(2,
#                        numericInput('sec_end', NULL, 0, min=0, max=59, step=1))
            )
        ),
        mainPanel(
#            h1('Time Differential'),
#            p('Between the days you selected are'),
            fluidRow(
                column(4, p('Time differential', 
                            verbatimTextOutput('test_out'))),
                column(3,
                       selectInput('sel_units', label=p('Units'), 
                                   c('Days'='days', 'Hours'='hours', 
                                     'Minutes'='mins', 'Seconds'='secs')))
            )
            
        )
    ),
h3('Documentation'),
p('Need to know how many days between two dates?  Select a starting date.  Select an ending date.  Ta-da!'),
p('Need that in hours instead?  Minutes?  Seconds?  Just select the correct units and your answer will be instantly updated.')
))
