2+2

#variabler:
 kapital = 100
 kapital = kapital * 1.05
 kapital
 
 print(kapital)
 
 getwd()
 setwd('/Users/minhui/Documents/SDA1')
 
 #ladda in data
install.packages("openxlsx")
library(openxlsx)

stockdata = read.xlsx('stock.xlsx', sheet = 1)
head(stockdata)

# analysera data
 
nrow(stockdata)
stockdata$year
mean(stockdata$year)

plot(x=stockdata$year, y=stockdata$capital)
plot(capital ~ year, data = stockdata)

#Datastrukturer
my_vec = c(4, 8, 15, 16, 23, 42)
my_vec
my_vec[2]
my_vec[4]
my_vec[c(2, 4)]
my_vec[-3]

my_text = c ("Hello", "world", "I love coding")
my_text
my_text[-2]
View(stockdata)
