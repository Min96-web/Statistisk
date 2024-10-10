model3 <- lm(median_home_value ~ crime_rate + NOx + dist_fenway_park + before_1940_p, data=trainingdataO)
y_hatt_test3 <- predict(model3, newdata=testdataO)# Gör förutsägelser på testdata
testdataO <- Boston_census_data[c(0:120),]
trainingdataO <- Boston_census_data[-c(0:120),]

#rmsetest <-function(dataset,modelss){
#difmin <-(dataset$median_home_value - modelss)^2
#tot_dif <-sum(difmin)/120
#rmse_val <- sqrt(tot_dif)

#return(rmse_val)
#}
#rmsetest(datatest,y_hatt_test)
#rmsetest(testdataO,y_hatt_test3)

#kritiskt värde från t-fördelning
#mu=0.2
#mu ! =0.2
t.test(MWH, mu = 0.2)
#kritiskt värde från t-fördelning:
n=length(MWH)
alpha=0.05
qt(p=1-alpha/2, df = n-1) #kritiskt värde

#mu=0.2
#mu<0.2
qt(p=alpha, df=n-1)

#räkna ut p-värdet för hand för det dubbesidiga testet
#T_obs = -8.5662
T_obs=-8.5662
pt(q=T_obs, df = n-1)*2
# räkna ut p-värdet för hand för det enkelsidiga testet
#T_obs=-8.5662
T_obs=-8.5662
pt(q=T_obs, df = n-1)

# Skattade modellparametrar från Uppgift 2.1
mean_logcost <- mean(logcost)
sd_logcost <- sd(logcost)
sd_logcost
n <- length(logcost)

# Konfidensnivå (1 - α)
confidence_level <- 0.95

# Z-värdet för den valda konfidensnivån (95% konfidensnivå)
z_value <- qnorm((1 + confidence_level) / 2)

# Beräkna konfidensintervallet med formeln
lower_intervell <- mean_logcost - z_value * (sd_logcost / sqrt(n))
upper_intervell <- mean_logcost + z_value * (sd_logcost / sqrt(n))
lower_intervell 
upper_intervell

t.test(skattcost,conf.level = 0.95)

lambda <- mu  # skattade parameter
x_values <- 0:max(extrapeople)
poisson_probs <- dpois(x_values, lambda)
hist(extrapeople, main="Histogram of extrapeople", xlab="extrapeople", ylab="Frequency", col="lightblue", freq = FALSE)
lines(x_values, poisson_probs, type="b", pch=16, col="red", main="Poisson Probability Function", xlab="extrapeople", ylab="Probability")

