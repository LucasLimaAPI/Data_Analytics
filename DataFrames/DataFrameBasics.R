#Data Frame Basics 
#Vamos pegar um quadro de dados vamos usar a funcao "state" para nos mandar uma tabelas de dados de estados, o resultado e semelhante a de uma matriz
state.x77
#Agora os quadros de dados podem tambem ter linhas e colunas de nome, em vez de apenas ter o numero que indica a coluna
#Podemos pensar em quadros de dados como uma especie de X, como uma planilha de excel, vai se muito util para trabalhar com grande quantidade de dados
#São chamados de dados incorporados e podemos usar mais alguns como por exemplo
USPersonalExpenditure
#Neste caso ele nos retorna em colunas de dados as despesas pessoais dos EUA em bilhoes de dolares e os respectivos anos.

women
#Neste caso nos retorna a altura e peso de mulheres com idades entre 30 e 39 anos 

#De que forma podemos ver uma lista com todos os quadros de dados internos disponiveis?
data() #com esta funcao sera exibito todods os datasets que podemos trabalhar, esta funcao retorna o nome do dataset e um breve resumo sobre o que ele e
#Exemplo
WorldPhones
#Retorna o numero de telefones no mundo separados por colunas das diferentes partes do mundo

#Temos umas funcoes importantes tambem como a head e a tail nos ajudar a filtrar os dados como por exemplo
head(state.x77)#Esta funcao retorna as 6 primeiras colunas do dataset 
tail(state.x77)#Esta funcao retorna as 6 ultimas colunas do dataset 

#Outras funcoes incorporadas uteis para trabalhar quadros de dados são STR e summary

str(state.x77)#Esta funcao retorna informacoes como que tipo de linha, que tipo de coluna, as dimensoes e etc 
#Portanto, resumo e apenas uma funcao generica usada para produzir resumos dos resultados de varias funcoes de ajuste de modelo ou apenas de objetos 
#como um quadro de dados.
summary(state.x77)#Esta funcao retorna um resumo de cada informacao das colunas no nosso quadro de dados.
#Valoriza algun valores de corte bem como o valor maximo.

#Vamos em frente e criar alguns dados meteorologicos 
days <- c('Seg','Ter','Qua','Qui','Sex')
temp <- c(16.5,26,27,28,30.25)
#Vamos criar um vetor de vetores logicos para saber se chove ou nao naquele dia 
rain <- c(T,T,F,F,T)
#Agora nos produzimos um quadro de dados, vamos salvar isso como frame de dados variaveis DMF e depois passar os dias para o vetor rain.
#Utilizando a funcao data.frame
data.frame(days,temp,rain)
#E entao quando verificamos nosso quadro de dados notaresmo que os nomes das colunas foram automaticamente definidos para o mesmo nome  da variavel vetorial e
#por padrao as linhas sao apenas numeros indexados
df <- data.frame(days,temp,rain)
df
#Ja que temos um quadro de dados, podemos ir adiante e chamar a estrutura dele como "df", o que nos dara algumas informacoes sobre a estrutura dos dados
#no quadro de dados, ou podemos chamar um resumo deste quadro de dados 
str(df)
summary(df)

#Podemos digitar "data" para obter a saida de todos os conjuntos de dados nos conjuntos do pacote.
data()