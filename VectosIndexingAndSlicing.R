#Vectos Indexing And Slicing

#Consiste em usar a notacao de colchetes para indexar e acessar elementos 
#individuais de um vetor

v1 <- c(100,200,300)
v2 <- c('a','b','c')

#Pegando elementos de um vetor
v1[2] #ira pegar o elemento "200" do vetor
v2[3] #ira pegar o elemento "c" do vetor

#SLICING Podemos recolher e selecionar os elementos dos vetores especificados
v1[c(1,2)]# Ele mostrara apenas os valores das 1,2 posições no caso "100,200"
v2[c(1,3)]# Ele mostrara apenas os valores das 1,3 posições no caso "a,c"

#indexacao mmultipla ou continua
v <- c(1,2,3,4,5,6,7,8,9,10)

v[2:5]#Ira fazer o slice ate 5 "1,2,3,4,5"
v[7:4]#Pode regredir "7,6,5,4"

#Idexar elementos usando nomes
r <- c(1,2,3,4)
names(r) <- c('a','b','c','d')
r[2]
r['b']

r[c('c','d','a')]

#Podemos usar elementos logicos
r [r>2]
r>2#FALSE FALSE TRUE TRUE

#Desta forma voce sobrescreve qualquer funcionalidade
my.filter <- r>2
my.filter
r[my.filter]
