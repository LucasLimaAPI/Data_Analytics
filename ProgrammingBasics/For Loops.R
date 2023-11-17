#For Loops
v <- c(1,2,3,4,5)

#Um loop for nos permite iterar sobre um objeto, neste caso um vetor em seguida podemos 
#executar um bloco de codigo para cada loop que passamos 

#Temos uma palavra chave e em seguida colocamos qualquer objeto que seja na quan estejamos interagindo
for (temp.var in v) {
  #Execute some code 
  #No for loop voce ira executar este codigo para cada variavel temporaria 
  #for every temp.var in v 
  print("Ola mundo")
  #Ele vai pegar as informações deste objeto e replicalas com a mesma quantidade armazenada 
  #Se colocarmos print "ola mundo" ele repetira ola mundo 5x pois e a quantidade de numeros armazenados
}

#EXEMPLO 2 

t <- c(1,2,3,4,5)

for (temp.vr in t) {
  result <- temp.vr + 1
  print("The temp.vr plus 1 is equal to:")
  print(result)
}


#EXEMPLO DE LISTA COM O LOOP FOR

my.list <- list(c(1,2,3),mtcars,12)
for (item in my.list) {
  print(item)
}


#EXEMPLO DE MATRIX COM O LOOP FOR
mat  <- matrix(1:25,nrow = 5)

for (row in 1:nrow(mat)) {#Podemos aninhar um loop dentro do outro 
  for (col in 1:ncol(mat)) {
    print(paste('the element at row: ', row, 'and',col, 'is',mat[row,col]))
    print(paste('the selected row is:',row))      
  }
  
}

