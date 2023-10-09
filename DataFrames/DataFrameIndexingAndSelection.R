#Data Frame Indexing And Selection
days <- c('seg','ter','qua','qui','sex')
temp <- c(22.2,26,23,35,15.6)
rain <- c(T,F,T,F,T)

#Pass in the Factors, Atribundo os dados.
df <- data.frame(days,temp,rain)

#Podemos usar uma notacao de colchetes para capturar informacoes de um quadro de
#dados.
df[1,]
df[,1]
df[1:3]
df[1:3,1]

#Podemos procurar de forma mais especifica utilizando o nome do dado
df[,'rain']
df[,'temp']
df[,'days']

#Todos os cinco valores de uma subsecao do quadro de dados com apenas 2 colunas
df[1:5, c("days","temp")]

#Podemos pegar todos os valores de uma coluna especifica
df$days
df$temp
df$rain
#Ou
df['days']

#Podemos usar a funcao de subconjunto para pegar um subconjunto de valores dos nossos dados
#baseados em uma condicao 
#Usar uma condicao de subconjunto, o que voce passa em sua origem de frame de dados 
#que nosso caos e o dia, dai vamos em frente e passamos um tipo de declaracao de 
#condicao de que essas instrucoes de condicao sem pre usam operadores de comparacao
subset(df,subset = rain == T)
#Desta forma vai nos retornar os dias chuvosos se o operador for "F" nos retornara
#os dias que nao choveu

#Podemos fazer o mesmo com a temperatura seja ela acima ou abaixo do valor definido
subset(df,subset = temp >= 26)
#Neste caso nos retornara os valores maiores ou igual a 26 graus

#Vamos ver como podemos ordenar um dado de fato usando a funcao de ordem 
#precisamos passar na coluna que desejamos ordenar 

sort.temp <- order(df['temp'])

#Em ordem decrescente
desc.temp <- order(-df['days'])

