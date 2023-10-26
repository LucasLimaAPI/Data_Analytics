#CSV FILES 
#Uma das formas Criar o arquivo CSV 
write.csv(mtcars,file = 'my_example.csv')

#E possivel passar o diretorio inteiro para ler o CSV
ex <- read.csv('my_example.csv')
head(ex)
