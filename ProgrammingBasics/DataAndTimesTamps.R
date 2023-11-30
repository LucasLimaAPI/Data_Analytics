#DataAndTimesTamps

#dates
today <- Sys.Date()#ira retornar a data de hoje
class(today)
#Se colocarmos ela como caracter ela nao ira retornar como data
c <- c("11-11-2011")
class(c)
#Se realmente quisermos que isso seja do tipo de datas precisamos um metodo para que a data seja chamada
my.date <- as.Date(c)
class(my.date)#e desta forma convertemos para uma data
#Se por acaso nos deparemos com as datas com um valor diferente ou formatos.
as.Date("Nov-03-1990")#ira retornar um erro dizendo que o formato nao e ambiguo
#No entando podemos adicionar parametros e argumentos de formatacao a ela como essa funcao de data
my.date <- as.Date("November-03-23",format= "%B-d%-%y")
class(my.date)
#%d Day of the month (decimal number)
#%m Month (decimal number)
#%b Month (abbreviated)
#%B Month (full name)
#%y Year  (2 digit)
#%Y Year  (4 digit)

as.Date("June.01.2002",format= "%B.%d.%Y")
help("format")

#Informacoes sobre o tempo de trabalho, usamos os tipos de dados posixct ou posixlt para 
#armazenar informações de horário.
#Podemos usar o comando Ct ou tl para converter strings em tipo de dados ou informacao de registro de tempo
#que podemos usar para análise de series temporais ou qualquer outro.
as.POSIXct("11:02:03",format="%H:%M:%S")
strptime("11:11:2011",format = "%H:%M:%S")
