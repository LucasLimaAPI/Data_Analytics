#Logical Operators
#& and
#| or
#! not

#Primeiro atribuimos a variavel um valor
x <- 10
#E então podemos aplicar os Operatores logicos como por exemplo
x < 20#X e menor do que 20 (verdadeiro)
x > 20#X e maior do que 20 (falso)
x != 20#X e diferente de 20 (verdadeiro)
x == 20#X e igual a vinte (falso)
x < 20 & x > 5#X e menor que vinte e maior do que cinco (verdadeiro)
#Podemos fazer esse de forma mais organizada
(x < 20) & (x > 5)
#Esta operacao requer que todos estejam verdadeiros caso um diferir sera falso
(x < 20) & (x > 5) & (x == 12) # Falso pois x nao e igual a 12

#O Or retornara verdadeiro para qualquer operacao que vier depois do primeiro resultado
(x == 10) | (x == 100)
#Desta forma ele sera falso:
(x == 100) | (x == 1000)# Neste caso o valor foi falso pois nenhum retorna o valor veradeiro de "x" = 10

#O operador not pode ser usado assim tambem 
!(x == 10)#Retorna falso pq x e igual a 10
!(x == 100)#Retorna Verdadero por que x nao e igual a 100

#Vamos utilizaro um DataFrame 

df <- mtcars
head(df)

df[df$mpg < 20,] # desta forma filtramos dados que sao maiores ou menores de 20 
df[df$mpg > 20,"mpg"] # desta forma filtramos para mostrar apenasa os mpg 

#Podemos usar tambem o subconjunto subset 
subset(df,mpg > 20,)

#Outros exemplos com outro operador 
df[ (df$mpg > 20) & (df$hp > 100),]# Podemos filtrar ainda mais dizendo que queremos mpg maior que 20
#e hp maior do que 100
df[ (df$mpg > 20) | (df$hp > 100),]# Ou utilizarmos o OR e filtrarmos menos dizendo que queremos mpg maior que 20
#ou hp maior do que 100


