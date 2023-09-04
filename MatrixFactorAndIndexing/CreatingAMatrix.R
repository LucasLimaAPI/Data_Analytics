#CREATING A MATRIX

#FORMA RAPIDA DE FAZER UM VETOR NUMERAL":"
1:10
v <- 1:10

#A matrix precisa de um vetor de capacitacao para ser usado junto da funcao
matrix(v) #Retorna uma matrix bidimensional 

#Podemos também ter uma matriz de duas colunas 
c <- 1:10
matrix(c,nrow = 2)#Ele analisa se as colunas tem equidade e neste caso são duas
#Colucas com 5 numeros cada, podemos especificar uma matrix 2 por 5 e o argumento
#nrow permitiu que isso fosse possivel.

#Podemos preencher as linhas em ordem sequencial, 1 entre 2 e 3 podemos usar o 
#argumento byrow que permite voce decidir preencher as linhas ou colunas da matriz
#a direita por exemplo

matrix(1:12,byrow = T,nrow = 4)#Desta forma ele trabalha de forma sequencial:

#     [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#[3,]    7    8    9
#[4,]   10   11   12

matrix(1:12,byrow = F,nrow = 4)#Neste metodo ele monta de cima para baixo:

#     [,1] [,2] [,3]
#[1,]    1    5    9
#[2,]    2    6   10
#[3,]    3    7   11
#[4,]    4    8   12

#Podemos criar matrizes a partir de muitos vetores e depois nomear as matrizes
#Neste exemplo vamos fingir que estamos trabalhando com as acoes do google (suposicao)

goog <- c(450,451,452,444,470)
mcsf <- c(320,321,322,352,300)

#Temos dois vetores e podemos combina-los em um objeto chamado ou uma variavel
#chamada "stocks".
stocks <- c (goog,mcsf)
print(stocks)
#[1] 450 451 452 444 470 320 321 322 352 300

#Se quisermos realmente construi uma matrix podemos utilizar a seguinte notacao
#Posso dizer que a matriz e a funcao matricial e posso passar em acoes de que as
#"rows" dizem ser iguais.

stock.matrix <- matrix(stocks,byrow = T, nrow = 2)

stock.matrix
#     [,1] [,2] [,3] [,4] [,5]
#[1,]  450  451  452  444  470 goog
#[2,]  320  321  322  352  300 msft

#Podemos adicionar nomes utilizando a funcao de nomes assim como fizemos com vetores
#Mas ao inves de usarmosa funcao "names" podemos usar a funcao "colnames" 

days <- c('Seg','Ter','Qua','Qui','Sex')
st.names <- c('GOOG','MSFT')

colnames(stock.matrix) <- days #A Horizontal recebe os parametros "days"
rownames(stock.matrix) <- st.names #A VERTICAL recebe os parametros "GOOG" E ""MSFT

