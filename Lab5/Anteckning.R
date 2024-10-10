n<-1000
pdf <- rnorm(n=n, mean=5, sd=3)
hist(pdf)
mean(pdf)

pdf_exp <- rexp(n=100000, rate = 3)
hist(pdf_exp,breaks = 40)
mean(pdf_exp)
1/3

# d_funktionen i R

# Y ~ Bin(n = 10, p = 0.3)

#P(Y=3)
dbinom(x=3,size=10,prob = 0.3)

#P(Y=O)
dbinom(x=0,size=10,prob = 0.3)

#P(Y=O) och P(Y=3)
dbinom(x=c(0,3),size=10,prob=0.3)

#plotta sannolikhetsfunktionen i R
Y = 0:10
sannolikheter = dbinom(x = Y, size = 10, prob = 0.3)
sannolikheter
 names(sannolikheter)=Y
 barplot(sannolikheter,col="steelblue")

#p_funktionen:
#P(Y<=2)
pbinom(q=2, size=10, prob=0.3)
sum(dbinom(x=c(0,1,2), size =10, prob=0.3))

#P(Y>5)
1- pbinom(q=5, size=10, prob = 0.3)

# X ~ N(μ=5, sd=3) 
dnorm(x=5,mean=5,sd=3)
dnorm(x= c(3,4,5,5.7,8),mean=5,sd=3)

x_values = seq(from=0, to=10, length=100)
x_values
fx=dnorm(x=x_values,mean=5,sd=3)
plot(x=x_values,y=fx,type = "l", col="red")
#p-funktionen:
#P(X<7)
pnorm(q=7,mean=5,sd=3)
# för hand:
(7-5)/3
#P(2<X<7)
pnorm(q=7,mean=5,sd=3)-pnorm(q=2, mean=5, sd=3)
#P(X>7.5)
1-(pnorm(q=7.5,mean=5,sd=3))




#kontinuerlig variabel
# X ~ Exp(lambda=5)
xSim = rexp(n=10000, rate=5)
head(xSim,10)
hist(xSim, col="steelblue",freq = FALSE)

x_values = seq(from = 0, to = 2, length = 200)
fx = dexp(x = x_values, rate = 5)
hist(xSim, col="steelblue",freq = FALSE)
lines(x= x_values, y = fx, col = "orange", lwd = 2)

#diskret variabel
#Y ~ Bin(n=10, p=0.4)

ySim = rbinom(n=1000, size = 10, prob = 0.3)
rel_freq = prop.table(table(ySim))
rel_freq
plot(rel_freq) #observerade värden
y_values = 0:10
real_probs = dbinom(x=y_values, size = 10, prob = 0.3)

plot(rel_freq,ylim=c(0,0.35))
lines(x=y_values, y=real_probs,col="orange",lwd=2)

#X~Geo(p=0.3)
xSim = rgeom(n=1000, prob=0.3)
hist(xSim) #ej lämpligt då xSim är diskret
barplot(xSim)

#räkna ut relativa frekvenser
rel_freq = prop.table(table(xSim))
rel_freq

barplot(rel_freq)

#teoretisk fördelning:
x= dgeom(x=0:16, prob=0.3)
plot(rel_freq)
lines(x = 0:16, y=x)

