#Apply
v <- 1:5
times2 <-  function(num){
  return(num*2)
  
}
print(v)
result <- sapply(v, times2)# Essencialmente multiplicou cada elemento em "V" por dois para obter dois, quatro...
print(result)

#Podemos usar um caso de uso realmente prático quando quisermos aplicar algum tipo
#de funcao sobre um vetor.

v <- c(1,2,3,4,5)
addrand <- function(x){
  ran <- sample(x= 1:100,1)
  return(x = ran)
  }
print(addrand(10))#devera ter apenas 1 numero aleatorio adicionado a 10 com um numero
#redondo entre 1 e 100

#Funcao de aplicacao sobre um vetor 
result <- lapply(v, addrand)# "lapply" se refere a uma lista por isso o "l" no inicio ele nos retorna uma lista
print(result)

result2 <- sapply(v, addrand)# "sapply" nos retorna um vetor com 5 numeros aleatorios. 
print(result2)

#Sample: funcao de amostra embutida nos permite apenas amostrar aleatoriamente
#objetos de um vetor 
sample(x = 1:10,5)# vai nos gerar a quatidade de numeros aleatorios que inserirmos

#Anonimous Functions
#quando estamos pegando o nome inteiro da variavel para definir usa funcao e onde as funcoes anonimas entram em jogo
#Semelhante a lambda no python

v <- 1:5

times2 <- function(num){# a funcao anonima quebra isso e se livra desta etapa do operador
  return(num*2)
  
}

print(times2(10))
result <- sapply(v,function(num){num*2})#Aqui temos uma funcao que pode ser constuida rapidamente 
print(result)#e poupamos o esforco de realmente rotular e nomea-la 

#Apply with multiple inputs
v <- 1:5

add_choice  <- function(num,choice){
  return(num+choice)
}
print(add_choice(3,10))#Somara os numeros descritos
#se eu quiser que adicionar a funcao add_choice a cada elemento no meu vetor 
sapply(v,add_choice, choice= 100)
