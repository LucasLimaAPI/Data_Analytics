#Histograms

library(ggplot2)
library(ggplot2movies)

#DATA & AESTHETICS 
pl <- ggplot(movies, aes(x=rating))

#Geometry
pl2 <- pl + geom_histogram(binwidth = 0.1,aes(fill=..count..))#Alpha = 0 totalmente transparente
#Passar uma string que voce quiser que o rotulo "X" e "Y"  seja
pl3 <- pl2 + xlab('Movie Rating') + ylab('Count')
pl3

print(pl3 + ggtitle("Movies Histogram"))
