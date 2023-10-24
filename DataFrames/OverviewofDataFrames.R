#OVERVIEW OF DATA FRAMES
#Creating Data Frames 
empt <- data.frame()
c1 <- 1:10
c2 <- letters[1:10]
#Criamos um data frame, ira nomear e separar de forma organizada as informações de c1 e c2
df <- data.frame(col.name.1 = c1, col.name.2 = c2)

#Importing and Exporting Data
d2 <- read.csv('some_file.csv') #este comando vai ler o arquivo 

write.csv(df,file = 'saved_df.csv')#Vai pegar a base de informacao e converter em arquivo write
df2 <- read.csv('saved_df.csv')#Vai ler o arquivo e importa-lo

#Getting information about Data Frame 
df

nrow(df)#Vai retornar quantas linhas temos 
ncol(df)#Nos retorna o numero de colunas
colnames(df)#Nos retorna os nomes das colunas
rownames(df)#Nos retorna os nomes das linhas 
str(df)#Nos retorna um resumo estatistico do nosso DF
summary(df)#Nos retorna um resumo estatistico sobre a media 

#Referencing Cells 
df[[6,2]]#Refere-se a linha e coluna especificada no caso 6 linha 2 coluna
df[[5,'col.name.2']]#E o mesmo que o de cima mas em extenso 
df[[2,'col.name.1']] <- 9999 #Metodo substitui informação descrita 

#Referencing Rows
df[1,]

#Referencing Columns
mtcars#BASE DE DADOS
head(mtcars)
mtcars$mpg#Nos mostra separadamente cada informacao, neste caso eu escolhi mpg
mtcars[,'mpg']#Faz o mesmo que o codigo de cima 
mtcars[,1]#Faz o mesmo que o de cima 
mtcars[['mpg']]
mtcars['mpg']#Nos retorna os dados completos desta sessao 
head(mtcars[c('mpg','cyl')])#Nos mostra dados das colunas selecionadas

#Adding Rows 
df2 <- data.frame(col.name.1 = 2000 , col.name.2 = 'new')
df2
df
dfnew <- rbind(df,df2)
dfnew#Combinamos o primeiro data frame com o segundo e eles concatenam um com o outro
df$newcol <- 2*df$col.name.1
df#Dobramos os valores colocado na primeira coluna

##Adding new Colums
df$newcol.copy <-  df$newcol
head(df)#Desta forma podemos copiar o data frame 
df[,'newcol.copy2'] <- df$newcol
head(df)#E podemos realizar uma nova copia desta maneira

#Setting Columns Names 
colnames(df)
colnames(df) <- c('um','dois','tres','quatro','cinco')
df# Desta forma renomeamos os nomes das colunas 
colnames(df)[1] <- 'NEW COL NAME'
df#Desta forma renomeamos os nomes um por um selecionado 

#Selecting Multiple Rows 
df[1:10,]
df[1:3,]
head(df)
head(df,7)#Determina o numero de rows 
df [-2,]#Ira no retornar todos os dados menos os dados da linha 2

head(mtcars)
mtcars[mtcars$mpg > 22,] #Vai nos retornar as informacoes descritas maiores que 22
mtcars[ (mtcars$mpg > 20) & (mtcars$cyl == 6) ,]
mtcars[ (mtcars$mpg > 20) & (mtcars$cyl == 6) , c('mpg','cyl','hp')]#Podemos selecionar linhas 
subset(mtcars, mpg> 20 & cyl == 6)#Podemos fazer tambem com a funcao subset

#Selecting Multiple Columns
head(mtcars)
mtcars[,c(1,2,3)]
mtcars[c('mpg','cyl')]

#Dealing with Missing Datas 
is.na(mtcars)#Desta forma detectamos se algo esta faltando ou se a algo de errado
any(is.na(df))
any(is.na(mtcars))
df[is.na(df)] <- 0
mtcars[is.na(mtcars$mpg)] <- mean(mtcars$mpg)
  