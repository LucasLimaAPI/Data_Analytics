#List Basics

v <- c(1,2,3)
m <- matrix(1:10,nrow = 2)
df <- mtcars
class(v)
class(m)
class(df)

#Se quisermos colocar todas essas estruturas de dados diferentes em uma unica variavel
#Chamar uma unica variavel e chamar as coisas dessa variavel unica para armazenar para isso que serve a lista
my.list <- list(v,m,df)

#Podemos designar nomes em vez destes numeros "[[1]][[2]][[3]]"

my.named.list <- list(sample.vec = v,my.matrix = m, sample.df = df)
#seleciona 
my.named.list$sample.df

my.list[1]

my.named.list[1]
my.named.list['sample.vec']
#Quanto constituido por "[]" ele se torna uma classe "list"

class(my.named.list['sample.vec'])

#Listas podem conter outras Listas
double.list <- c(my.named.list,my.named.list)


