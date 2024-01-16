#Barplot
library(ggplot2)
df <- mpg

pl <- ggplot(df,aes(x=class))

print(pl + geom_bar(aes(fill=drv),position = "dodge"))#Vai nos retornar graficos em barra 
#Position = dodge vai empilhar uma categoria ao lado da outra ao inves de uma acima da outra.