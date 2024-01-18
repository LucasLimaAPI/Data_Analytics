#Potly and Interactive Visualizations
library(plotly)#Ele nos permitira visualizar de uma forma mais abrangente
library(ggplot2)

pl <- ggplot(mtcars,aes(mpg,wt)) + geom_point()
pl

gpl <- ggplotly(pl)
gpl
