#While loops
#while(condition){
  #While condition is true
#}

x <- 0

while (x<10) {
  print(paste0('X é: ',x))
  #Precisamos fazer ele parar em algum momento por isso desenvolvemos outra condicao
  x <- x+1 #Desta forma criamos um laco de repeticao que conta ate 10
  #Vamos encaixar um if neste loop para ficar mais visivel o break
  if(x==5){
    print("Agora X é igual a 5, Break")
    break #Podemos utilizar a funcao break para quebrar o loop assim ele não rodq até o fim
  }
    
}#paste0 funcao na qual posso encaixar um resultado no espaço em branco, se passado como parametro.




