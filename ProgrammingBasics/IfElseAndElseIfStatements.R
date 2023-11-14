#IfElseAndElseIfStatements

#Aqui colocamos uma condicional de que "Se x for igual a 10 retorne "X e igual a 10"
x <- 10
if (x == 10){
  #code
  print('X e igual a 10')
}

#O Else if  tem a funcao de dizer se x nao e igual a isso entao x e igual a isso
x <- 10
if (x == 10){
  #code
  print('X e igual a 10')
}else if(x == 12){
  print("X e igual a 12")
}
#E para finalizar o laço de repeticao if podemos utilizar o else de caso isso nao funcionar tente isso
x <- 14
if (x == 10){
  #code
  print('X e igual a 10')
}else if(x == 12){
  print('X e igual a 12')
}else{
  print('X e diferente de 10 ou 12')
}

#Vamos aplicar isto de outra forma com outras variaveis
hot <- F
temp <- 60

if (temp > 80){
  #Executa se a condicao for TRUE
  hot <- T#Neste caso se a temperatura for maior que 80 a variavel hot passa a ser TRUE
}
print(hot)

#------------------------------------------


temp1 <- 30
sens= 'blank'

if(temp1 >=  40){
  sens <- 'VOU FRITAR'
}else if (temp1 >= 30 ){
  sens <- "Nossa esta Calor"
}else if(temp1 <= 30 & temp1 == 20){
  sens <- "Nossa esta fresco"
}else if (temp1 <= 10 & temp1 == 1){
  sens <- 'Vamos Congelar'
}else if (temp1 == 0){
  sens <- "X_X"
}

print(sens)


#Vamos adaptar agora para uma hamburgueria
ham <- 0
cheese <- 0
report <- 'blank' #Este e um tipo de relatorio, mas vamos deixar em branco 

#Vamos enviar algumas condicoes para construir um relatorio
if (ham >= 10 & cheese >= 10){
  report <- "A Hamburgueria está vendendo bem."
}else if (ham == 0 & cheese == 0){
  report <- "Nao vendemos nada hoje (T-T)"
}else{
  report <- "Vendemos alguns hamburguers com queijo hoje"
}

print(report)
