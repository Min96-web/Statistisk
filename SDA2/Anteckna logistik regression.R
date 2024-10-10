
odds <- seq(0.1,100,by=0.1)
probs <- odds/(1+odds)

plot(probs, odds,type = "l")
