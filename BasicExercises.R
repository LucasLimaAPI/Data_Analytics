#TUDO EM PRATICA

#1: What is two to the power of five?
2^5
#Retorno 32

#2 Create a vector called stock.prices with the following data points: 23,27,23,21,34

stock.prices <- c(23,27,23,21,34)
stock.prices

#3 Assign names to the price data points relating to the day of the week, starting with Mon, Tue, Wed, etc...

data.days <- c(23,27,23,21,34)
data.name <- c('seg','ter','qua','qui','sex')

names(data.days) <- data.name
data.days

#4 What was the average (mean) stock price for the week? (You may need to reference a built-in function)
#Usar a funcao "mean"

mean(stock.prices)
#Retorno 25.6

#5 Create a vector called over.23 consisting of logicals that correspond to the days where the stock price was more than 
over.23 <- stock.prices>23

#6 Use the over.23 vector to filter out the stock.prices vector and only return the day and prices where the price was over $23
stock.prices[over.23]
#Retorno 27 34

#7 Use a built-in function to find the day the price was the highest

max(data.days)
#Retorno 34

#This didn't actually tell us the day! Only the max price, let's use a filter to grab the day!
max.price <-stock.prices == max(stock.prices)
max.price  
#Retorno FALSE FALSE FALSE FALSE TRUE

data.days[max.price]
#Retorno 34

#Okay that's it for the exercise on the basics! Great job!



