#VECTOR BASICS
#VETOR É UMA MATRIZ UNIDIMENSIONAL QUE PODE CONTER ELEMENTOS DE DADOS NUMERICOS LOGICOS E CARACTERES.

nvec <- c(1,2,3,4,5)
class(nvec)

#Possuem outros tipo para caracterizar o vetor como "characters"
cvec <- c("B","R","Z")
class(cvec)

#Possuem outros tipo para caracterizar o vetor como "logical"
lvec <- c(TRUE, FALSE)
class(lvec)

#Portanto uma das regras sobre vetores e que voce nao pode misturar tipos de
#dados nos elementos daquela Matriz vetorial

V <- c(T,12,14)
V
#ele retornara o valor 1 no lugar de true pois os demais números sao numericos

#Outro exemplo
v <- c("BRZ",20,23)
v
#Neste caso todos os dados se tornarao "characters".

#Tendo essas informacoes vamos falar sobre os nomes dos vetores.
#Vamos imaginar que temos vetores de temperatura.
temps <- c(23,17,25,40,35,12,45)

#Aqui nao tem nada que deixe em evidencia o dia da semana e eu preciso adicionar
#essa informacao e eu posso fazer isso usando a funcao names()

names(temps) <- c('dom','seg','ter','qua','qui','sex','sab')
temps
#E um metodo importante de nomeacao pois podemos puxar os dados pelo nome depois
#VECTOR OPERATIONS
v1 <- c(1,2,3)
v2 <- c(5,6,7)
#Aritmetica basica
v1 + v2
v1 - v2
v2 - v1
v2 * v1
v1 / v2

#Tambem temos alguma funcoes internas uteis que podem ser usadas juto dos vetores
#Voce tem o nome da sua funcao em parenteses por exemplo
sum(v1)  #ele ira retnorar a soma do vetor.

sum.of.vec <- sum(v1)
sum.of.vec

#Podemos checar a media dos vetores 
mean(v1)

#VALOR PARCIAL PADRAO
sd(v1)

#Podemos checar o maximo de elementos
max(v1)
min(v1)

#Podemos retornar todo o produto de todos os elementos no vetor
prod(v1)
prod(v2)

# END
