#RegularExpressions
#grepl > logico
#grep > indice

text <- "Hi there, do you know who you are voting for?"
#Agora temos nosso texto apenas como string e queremos procurar por determinados termos 
#ou padroes em minhas sequencias de caracteres.
#Então temos duas opcoes o grepl e o grep a diferenca e que um ira retornar um grep logico
#e o outro indice.
grepl('voting', text)# Ele ira verificar se a palavra voting aparece no nosso texto
grepl('dog',text)
grepl('do you', text)
#Podemos escrever o texto como por exemplo
grepl('hello', 'hello world')

#Se tivermos um vetor por exemplo
v <- c('a','b','c','d','d')
grepl('b',v)#Vai retornar o indicec true toda vez que realmente encontrar algo que corresponda

#Indice
grep('b',v)#Nos retorna o indice na qual se encontra a letra, no caso indice 2
grep('d',v)
grep('e',v)#Nos retorna o valor 0 pois nao existe nenhum indice com essa informacao.

#Estou procurando o termo a em algum vetor que tem uma virgula e um ponto de indexacao
#para o segundo indice
grep('a',c('b','a'))
