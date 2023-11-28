#BuidItInRFreatures

#seq() Create sequences
seq(0,100,by=4)#Vai criar uma sequencia ate 100 pulando de 4 em 4 
seq(0,100,by=10)
seq(0,23,by=2)
#sort() Sort a vector
v <- c(1,4,7,2,13,3,11)
sort(v) #Vai sortir os numeros na sequencia do menor ao maior
sort(v,decreasing = T)#Vai sortir os numeros na sequencia do maior ao menor

cv <- c('b','d','a','c')
sort(cv)
#rev() Reverse elements in object
v <- 1:10
rev(v)

#str() Show the structure of an object
str(mtcars)#Nos retorna do que e constituido o objeto

#append() Merge objects together (works on vector and lists)
v <- 1:10
v2 <- 35:40

append(v, v2)#Juntou os dados fornecidos

#Verificacao de tipo de dados
#is.
v <- c(1,2,3)
is.vector(v)#Vai retornar TRUE pois sim ele e um vetor
is.data.frame(v)# Vai retornar FALSE pois nao e um data frame 
is.data.frame(mtcars)#Agora retorna TRUE pois e um data frame
#Convertendo tipos de dados
#as.
v
as.list(v)#Interage com os elementos do vetor e o transforma em uma lista
as.matrix(v)#Da mesma forma com uma matriz e etc
