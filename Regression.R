 
x=c(4,2,5.2,9.7,6.1,8.3,5.3)
y=c(2,-1,5,6.32,7.7,6.3,4.1)
df = data.frame(x,y)

fit = lm(y~x, data= df)
summary(fit)