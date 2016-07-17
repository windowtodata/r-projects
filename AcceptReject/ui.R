shinyUI(
  
  pageWithSidebar(
    headerPanel("Standard Normal Variate Simulation (en.wikipedia.org/wiki/Rejection_sampling)"),

    sidebarPanel(
      sliderInput("sampNum", "Please Select Number of Samples:",
                  min=1000,max=100000,value=10000, step=1000)
    ),
    
    mainPanel(
      plotOutput('myPlot')
    )
  )
)