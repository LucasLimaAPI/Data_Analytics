#GuideToUsingTidyr
install.packages('tidyr')
install.packages('data.table')

library(tidyr)
library(data.table)

#gather():A função ira coletar varias colunas 

#Para criar essencialmente um quadro de dados de algum tipo retorno trimestral para uma empresa.
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min= 0, max = 100)
q2 <- runif(9, min= 0, max = 100)
q3 <- runif(9, min= 0, max = 100)
q4 <- runif(9, min= 0, max = 100)

df <- data.frame(comp = comp, year = yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

#O que queremos fazer e reestruturar o componente de tempo desses dados como apenas uma unica
#variavel individual, agora podemos reunir cada trimestre em uma variavel de coluna e tambem reunir
#os valores associados a cada trimestre em uma segunda variavel de coluna.
gather(df,quarter,Revenue,Qtr1:Qtr4)#a primeira coisa que vamos fazer e frame de dados do passageiro ou conjunto de dados aqui ZF.
#Um quarto de coluna e uma coluna de receita e entao eu vou passar nas colunas reais.

#O operador de tubulacao e entao chamarmos de coletar e entao poderemos ignorar a passagem no data frame
df %>% gather(quarter,Revernue,Qtr1:Qtr4)#gather usando nossa rececita de par de valores-chave e entao as colunas reais que queremos
#passar e obteremos o mesmo resultado.

stocks <- data.frame(
  time= as.Date('2009-01-01') + 0:9,
  x = rnorm(10, 0, 1),
  y = rnorm(10, 0, 1),
  z = rnorm(10, 0, 1)
)
stocks
head(stocks)
