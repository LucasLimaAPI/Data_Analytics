#EXCEL FILES
#Vamos instalar primeiro um leitor para excel
install.packages("readxl")

#Carregar os pacotes que baixamos 
library(readxl)

#Chamar planilhas 
excel_sheets('Sample-Sales-Data.xlsx')
#Identificou uma folha e isto sera util para o proximo codigo onde permitira ler definitivamente
#o arquivo excel como um quadro de dados

df <- read_excel('Sample-Sales-Data.xlsx',sheet = "Sheet1")
head(df)

#Soma da coluna de valores 
sum(df$Value)

#Resumo estastisticos do arquivo excel
summary(df)

#Como baixar uma pasta de trabalho inteira com a funcao "lapply" para aplicar essencialmente as planilhas
#Podemos aplicar uma funcao a um objeto iteravel inteiro, como uma lista ou vetor neste caso a planilha de excel
#sera entregues em folhas do excel, retornando o nome de todas as folhas.
entire_workbook <- lapply(excel_sheets('Sample-Sales-Data.xlsx'),read_excel,path="Sample-Sales-Data.xlsx")
#Agora temos uma lista com todos os dados.


#Escrever arquivos Exce
#Precisamos baixar outro pacote 
install.packages('xlsx')
install.packages('rJava')
install.packages('xlsxjars')
library(xlsx)
head(mtcars)

write.xlsx(mtcars,"output_example.xlsx")
