#----> GRAPHIC DISPLAYING DATA <------
plot()
# package ggplot2, plotly...

cars <- c(1,3,6,4,9)
truck <- c(2,5,4,5,12)
plot(cars, type="o",col="blue",ylim=c(0,12))
lines(truck, type="o",pch=22, lty=2, col="red")
title(main="Auto", col.main="pink",font.main=4)

x <- sin(1:10)
y <- cos(1:10)
z <- log(1:10)

plot(x,y)

# randomness in R (pseudo-randomness)
# function simple() in her basic function simple permut given set numbers

x <- 1:10
sample(x)

# sample(10) i calling simular top call
# this function have argument replace whith default value FALSE, which means it simulates randoms
# picking numbers whitout repetition. If we put value TRUE function return sample whit repetition.
# One more argument is prob (ei probability) and he is default value is NULL, and we can give him some 
# values(probability) elements set.
# Argument size determines haw much element we pick from given vector. Note: Because top given two way
# infliction can made some mislead whit :

sample(x[x>8]) # expression: vector size 2
sample(x[x>3]) # expression: vector size 10

# we want to simulate bacanje coin

coin <- c("Tails","Heads")
sample(coin, size=1)

# now we want 100 simulate this experiment
sample(coin, size=100) # this given error! we need to change argument replace

sample(coin, size=1000, replace = T)
 # display result experiment 
table(sample(coin, size=1000, replace = T))

# we can simulate throwing spoiled coin
sample(coin, size = 1000, replace = T, prob = c(1/3,1/3))
table(sample(coin, size=1000, replace = T,prob = c(1/3,1/3)))

# one more function for generate randomnees is runif. She generate random number from interval (0,1)
#(using uniform distribution)
# runif(size, min=a, max=b)

r <- runif(1000,0,1)
length(r[r<0.5])/1000

length(r[r>2/3])/1000










