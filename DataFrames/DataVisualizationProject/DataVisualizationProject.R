#DataVisualizationProject
#Projeto onde tento recriar um valor de indice de desenvolvimento humano plotado contra um valor do indice de percepcao de corrupcao

library(ggplot2)
library(data.table)
library(ggthemes)
install.packages("ggthemes")


pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")


df <- fread('Economist_Assignment_Data.csv', drop= 1)
head(df)
#Grafico colorido por regiao
pl <- ggplot(df,aes(x=CPI, y=HDI, color= Region)) + geom_point(size=4, shape= 1)
print(pl)

#Tracando a linha, progressao linear
pl2 <- pl + geom_smooth(aes(group=1),method = 'lm', formula = y~log(x),se=F,color='red')
print(pl2)
pl3 <- pl2 

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

pl4 <- pl3 + scale_x_continuous(limits = c(.9,10.5),breaks = 1:10) 
pl4 + theme_economist_white()