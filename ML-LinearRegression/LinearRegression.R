#Linear Regression with R

df <- read.csv('student-mat.csv',sep = ';')
df
#Verificar se ha valor nulo
any(is.na(df))

#Diagramas de correlação 
install.packages('corrgram')
install.packages('corrplot')

#Librarys
library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)
library(caTools)
# num only 
num.cols <- sapply(df, is.numeric)

#filter
cor.data <- cor(df[,num.cols])
cor.data

print(corrplot(cor.data,method = 'color' ))
corrgram(df,order = T,lower.panel = panel.shade,
         upper.panel = panel.pie,text.panel = panel.txt)

ggplot(df,aes(x=G3)) + geom_histogram(bins = 20, alpha = 0.5,fill='blue')

#Split Data into Train and Test set
install.packages('caTools')

#Set A Seed
set.seed(101)

#Split up sample
sample <- sample.split(df$G3,SplitRatio = 0.7)

#70% of data ->train
train <- subset(df,sample == T)

#30% will be test
test <- subset(df,sample == F)

#The general model of building a linear regression model
#looks like this:
model <- lm(y ~ x1 + x2,data)

#or to use all the freatures in your data 
model <- lm(y ~. , data)

#TRAIN and BUILD MODEL
model <- lm (G3 ~ ., data = train)

#Predictions
G3.predictions<- predict(model,test)

results <- cbind(G3.predictions,test$G3)
colnames(results) <- c('predicted','actual')
results <- as.data.frame(results)
print(head(results))


#Take care of neg values
to_zero <- function(x){
  if (x < 0){
    return(0)
  }else{
    return(x)
  }
  
}


#Apply zero function
results$predicted <- sapply(results$predicted,to_zero)

#Mean squared error

mse <- mean((results$actual - results$predicted)^2)
print(mse)

#RMSE
print(mse^0.5)

#Run Model
res <- residuals(model)
class(res)

res <- as.data.frame(res)
head(res)

#interpret the model
print(summary(model))
ggplot(res,aes(res)) + geom_histogram(fill='blue',alpha(0.5))
