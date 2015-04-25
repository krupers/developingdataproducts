library(shiny)
shinyUI(pageWithSidebar(headerPanel("Vehicles Database*"),
                        sidebarPanel(h4('*Data from Motor Trend US magazine released in 1974 year.'),
                                     h4('Choose number of Cyl./HP to see the average distance for the vehicles in range'),
                                     h3("Get the data"),
                                     radioButtons("cyl",
                                                  "Cyl.:",
                                                  c("4" = "4",
                                                    "6" = "6",
                                                    "8" = "8"
                                                    )
                                                  ),
                                     numericInput('horse',
                                                  'HP: ',
                                                  100,
                                                  min = 70,
                                                  max = 250,
                                                  step = 10
                                                  )
                                     ),
                        mainPanel(h4("Distance for your car selection"),
                                  verbatimTextOutput("mpgId")
                                  )
                        )
        )