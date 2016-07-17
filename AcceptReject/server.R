library(shinyapps)
library(ggplot2)
shinyServer(
  function(input, output,session){
  
    output$myPlot = renderPlot({
     Z=vector()
     countn = input$sampNum
     for(i in 1:countn){
        y1 = -log(runif(1,0,1))
        y2 = -log(runif(1,0,1))
        y3 = ((y1-1)^2)/2
        
        if (y2 >= y3){
          c = runif(1,0,1)
          if (c < 0.5)
            Z = c(Z,-y1)
          else
            Z = c(Z,y1)
        }
     }
     #hist(Z,col='indianred')
     ggplot(data=as.data.frame(Z), aes(Z)) +
       geom_histogram(binwidth=.2, colour="indianred", fill="white") 
    })
  }
)