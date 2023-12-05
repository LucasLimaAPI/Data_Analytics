#DPLYR
install.packages('dplyr')
library(dplyr)

#vamos baixar um pacote de dados
install.packages('nycflights')
library(nycflights19)
#conjunto de dados de voos acontecidos em 2013
head(flights)#Informacoes de partidas e chegadas
summary(flights)

#filter() and slice()
head(filter(flights,month == 11, day == 3, carrier == 'AA'))#Filtramos todos os voos dos dias descritos da American Airlines
head(flights[flights$month == 11 & flights$day == 3, flights$carrier == 'AA', ])
slice(flights,1:10)

#arrange()
head(arrange(flights,year,month,day,arr_time))
head(arrange(flights,year,month,day,desc(arr_time)))

#select() and rename()
head(select(flights,carrier,arr_time,month))#Maneira de selecionar tipos de dados rapidamente.
#Seguindo em frente podemos renomear rapidamente as colunas
head(rename(flights,airlines_carrier = carrier))

#distinct()
#a funcao nos permite selecionar os valores distintos ou valores unicos em uma coluna ou tabela.
distinct(select(flights,carrier))

#mutate() and transmute ()
#Seleciona conjuntos de colunas existentes, geralmente util adicionar novas colunas que sao funcoes
#funcoes de colunas existentes.
head(mutate(flights, new_col = arr_delay-dep_delay))
#Se voce quer apenas as novas colunas que criou de volta, usamos transmute ao inves de mutate
head(transmute(flights, new_col = arr_delay-dep_delay))

#summarise(
#Sumarise nos permite recolher rapidamente quadros de dados em linhas simples usando algum tipo de 
#funcao que agrega um resultado
summarise(flights,avg_air_time=mean(air_time,na.rm =T))
#Soma
summarise(flights,total_time=sum(air_time,na.rm =T))
#summerise e o conjunto de todos os dados.

#sample_n()and sample frac()
#Basicamente o que eles fazem e permitir que voce pegue um numero aleatorio de linhas ou uma 
#fracao aleatoria de linhas 
sample_n(flights,4)
#fracao das linhas
sample_frac(flights,0.1)

