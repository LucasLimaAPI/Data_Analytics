#Scatterplots (Grafico de dispersao)
library(ggplot2)
df <- mtcars

#DATA & AESTHETICS 
pl <- ggplot(df,aes(x=wt,y=mpg))

#GEOMETRY
pl2 <- pl + geom_point(aes(shape=factor(cyl),color=cyl,size=3))#em vez de dizer o nome da cor voce pode digitar o codigo de cor de texto e escolher uma cor especifica que deseja.
#desta forma executada no pl2 podemos decidir pela cor a diferenca de valores.

print(pl + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=3))#O tamanho dos pontos de dispersão aumentam a medida que o valor de CYL aumenta.
#Se sabemos que deve ser algum tipo de recurso de tipo categorico chamaremos "factor", para uma variedade de cilindros temos o "shape".
pl3 <- pl2 + scale_color_gradient(low='Blue', high = 'Red') 
print(pl3)
