#FUNCTIONS

#Voce tem o nome da sua funcao no operador de atribuicao, podemos chamar essa funcao depois
name_of_func <- function(input1 = 2, input2 = 1 , input3 = 45){
  #Code Execute
  result <- input1 + input2 + input3
  return(result)
}

name_of_func()
#Podemos apenas chamar uma funcao singular em vez de ter que reescrever o codigo varias vezes 
#para a mesma funcao, podemos reutiliza-la.

hello <-  function(){
  print("Ola")
}

hello()

#Podemos adicionar inputs dentro da funcao como por exemplo 
hello <-  function(name = 'Lucas'){ #"name" e uma key-word para nossa funcao.
  #Code executes when the function is called
  print(paste("Ola",name))
}
#Tambem podemos atribuir o nome direto na funcao ao lado da key word com o simbolo de "="
hello()

#Adicionar sublinhado ou tornar minha funcao de palavra chave, usar funcionalidade de dois argumentos.
add_num <- function(num1, num2){
  my_sum <- num1 + num2
  return(my_sum)
}

result <- add_num(4,6) #Estamos apenas armazenando como resultado variavel.

#Adicionar uma key word na funcao na qual multiplique o 5x
times5 <- function(num){
  my.result <- num*5
  return(my.result)
}
my.output <- times5(100)
print(my.output)

#Exemplo de variavel global e um escopo global
v <- "i'm a global variable"
stuff <- "i'm a global stuff"

fun <- function(stuff){
  print(v)
  stuff <- "Reassing stuff inside this function fun"
  print(stuff)
}
#Perceba que nao vai interfir nos parametros que passamos na funcao
fun(stuff)
print(stuff)
