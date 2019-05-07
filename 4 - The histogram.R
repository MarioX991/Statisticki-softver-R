#--------> The histogram <--------

#The histogram is a graphic representation distribution of the set of given numeric data. We used it for estimation of a density function.
#The histogram is built in the following way:
 # 1. Given data must be sorted
 # 2. We chose lenght of mark
 # 3. The whole interval is allocated (a range of data) on subinterval lengths
 # 4. In x-axes, we mark given interval, and on the y-axis is a number of an element from the sample who enter in that interval.
#In R exist function hist(). Two important arguments of that function are: 
 # **  x- vector, whose histogram we wont to display
 # ** breaks - hear we put vectors  from the ends of each interval
#When we build histogram we must know how much category (ie this subinterval ) to have. This number we get from the formula:
 # k=[log_{2}(N)]+1
# ** k is a number of subintervals, N - the scope of the sample space.
#From here we can find the width  every interval using the formula:
 # d=R/k
# R - the sample range (the difference between min and max element  range())


#ex: The average minimum price of unmanufactured Benyin in America was 1.35$.
#In advertising, the purpose of the company is to announce how its price is low.
# In order to confirm their claims, the company's statistics gathered
# the following data based on a similar sample.

price <- c(1.22, 1.37, 1.27, 1.20, 1.42, 1.41, 1.22, 1.24,
            1.28, 1.42, 1.48, 1.32, 1.40, 1.26, 1.39, 1.45,
            1.44, 1.49, 1.47, 1.47, 1.24, 1.34, 1.27, 1.35,
            1.34, 1.45, 1.49, 1.45, 1.23, 1.20, 1.42, 1.34,
            1.43, 1.21, 1.49, 1.36, 1.24, 1.20, 1.45,
            1.23, 1.25, 1.24, 1.35, 1.23, 1.39, 1.38,
            1.46, 1.48, 1.26, 1.36, 1.22, 1.46, 1.39,
            1.22, 1.29, 1.47, 1.24, 1.35, 1.21, 1.21)
# Calculate sample environment and the median, sample range, and draw a histogram over the given data. 

mean(price) # sum(price)/length(price)

median(price)
range(price)

# built the histogram

n <- length(price)
k <- floor(log(n ,base = 2))+1
d <- diff(range(price))/k
k

# Sorting vector
price <- sort(price)
# Built partition on intervals

partition <- price[1]+0:k*d 
partition

hist(price,
     breaks = partition,
     col="coral",
     main="")


# We want to compare histogram who are building without given partition:

par(mfrow=c(1,2)) # separate pictur in two 
hist(price, 
     breaks = partition, 
     col="coral",
     main= "Histogram price")
hist(price, col="lightblue", main="Histogram price")


#ex: Result from some exam

results<- c(28, 27, 26, 25, 24, 23, 21, 21, 20, 19, 19, 18, 18, 18, 17, 17, 17, 17,
               16, 16, 16, 15.5, 15, 15, 15, 15, 14, 13, 13, 13, 13, 12, 12, 11, 11,
               11, 11, 11, 10, 10, 10, 9, 9, 8, 7, 6, 5, 4, 0, 0, 25, 23, 21, 21, 21,
               21, 20, 19.5, 19, 19, 18, 18, 17, 17, 17, 17, 16, 15, 15, 15, 14, 14,
               14, 13.5, 13, 13, 12, 12, 10, 10, 9, 9, 9, 9, 8, 7, 7, 7, 7, 5, 5, 5,
               5, 4, 3, 2)

# Determine: histogram, sample center, sample dispersion, sample standard deviation, median, quantile

#sample center
mean(results)
# sample dispersion
var(results)
# standrd deviation
sd(results)
# median
median(results)
# quantil
quantile(results)

# show which values statistc have on 0%, 25%, 50%, (median), 75%, 100%

k <- floor(log(length(results),2))+1
d <- diff(range(results))/k
partition <- sort(results)[1]+0:k*d
hist(results, 
     breaks = partition,
     col = "coral",
     main="Histogram results")


#Polygon frequency

#Graphic presentation of data which have for goal understanding form of distribution is a similar way like the histogram.
# To construct polygon frequency, it must divide data on class (intervals), like on a histogram.  
#After that, we mark a point on graphics which x coordinates have values of the middle interval,
# and y coordinates are the frequency of appropriate class. Polygon built when we connect this mark points. 

discoveries # FREE BASE > Who contains number od greatest inventions scientific research from 1860 to 1959

## Time Series:
## Start = 1860
## End = 1959
## Frequency = 1
## [1] 5 3 0 2 0 3 2 3 6 1 2 1 2 1 3 3 3 5 2 4 4 0 2
## [24] 3 7 12 3 10 9 2 3 7 7 2 3 3 6 2 4 3 5 2 2 4 0 4
## [47] 2 5 2 3 3 6 5 8 3 6 6 0 5 2 2 2 6 3 4 4 2 2 4
## [70] 7 5 3 3 0 2 2 2 1 3 4 2 2 1 1 1 2 1 4 4 3 2 1
## [93] 4 1 1 1 0 0 2 0

range(discoveries)
# Interval border

cut.points <- seq(-2 ,14,by = 2)

# table frequency

dis.cut <- cut(discoveries,cut.points, right = FALSE)
disc.freq <- table(dis.cut)
cbind(dis.freq)

# built hitogram

hist(discoveries, 
    col="slategray3", 
    border="dodgerblue1", # border araund hitogram chart
    right=F, #logical; if TRUE, the histogram cells are right-closed (left open) intervals.
    xlab="x-osa", # title for x-axes
    main="Histogram"    #graphic title
     )


plot(disc.freq, 
     type="b",
     col="orange", 
     main="Polygon frequency"
    )

# ------> HISTOGRAM LIKE ESTIMATE DENCITY <-------

# A few example in whitch we generate somple from known distributions and we wont to compare
# histogram whit teoreticcal dencity. (we are used hist from package lattice)

library(lattice)
# sample width 500 is standard normal distributed

x <- rnorm(500)
hist(x, prob = TRUE, xlab="", ylab="", col="coral1", border="bisque", main="N(0,1)")
curve(dnorm(x ), add=T, lwd=3, col="cornflowerblue")

# the sample volume of 1000 from exponential density whit paramether 4

y <- rexp(1000,4)
hist(y, prob=T, xlab = "", ylab = "", col="cornflowerblue", border = "bisque", main="Exp(1)")
curve(dexp(x,4), add=T, lwd=3, col="coral1"  ) #lwd - line width

# sample from uniform U(0,1) distribution volume 500
z <- runif(500)
hist(z, prob=T, xlab = "", ylab = "", col="darksalmon", border = "bisque", main="U(0,1)")
curve(dunif(x), add=T, lwd=3, col="cadetblue"  )


# example: Let it be S_{n}=X_{1}+....+X_{n}, i=1,...,n indenpendent random variables eith E(2) distribution.
# Let ggenerate random variable S_{n}. Generate N=1000 numbers from same distribution like S_{n} and plot hist.
# Is it result expected?


s_n <- function(n){
  x <- rexp(n, rate=2)
  sum(x)
  }
N <- 1000
n <- 100
s <- replicate(N ,s_n(n))
hist(s, 
     probability = T,
     col="lightblue",
     main=""
)
# we known that EX=1/lambdam DX=/lambda^2
EX <- 1/2
DX <- 1/4
# we want to standardize data

s.z <- (s-n*EX)/sqrt(n*DX)
hist(s.z,
     probability = T,
     col="lightblue",
     main="",
     ylim = range(0,0.4)
     )

     curve(dnorm(x),
     add=T,
     lwd=2,
     col="orange"
  )

# special case of CGT is Moavr-Laplas Theorem
     
# It is known to us that binom random variable B(n,p) can be present like sum of n 
# independent random variables with Brnuli(p) distibution (ei sum n indenpendent indicators)
     # and also ES_{n}=np, DS_{n}=np(1-p), If it is np>10 we can aproximate whit normal.
     
     # We are generate B(n,p) like sun od the n indenpendent random variables Ber(p)
     
     binom <- function(n,p){
       x <- sample(c(0,1),n,replace = TRUE, prob=c(1-p,p))
       b <- sum(x)
       return(b)
     }
     sample <- replicate(1000, binom(50,0.7))
#standardize data
     st.sample= (sample-50*0.7)/sqrt(50*0.7*0.3)
    
plot(density(st.sample),lwd=2, col="coral", main="") # estimate density form sample
curve(dnorm(x),col="lightblue", lwd=2, add=T, from=-4, to =4) # theoretical curve density N(0,1) distribution

# for some known distribution in R exist finction who generate sample form thet distribution, count function od density in given point, 
# density (on apsolun continuous) or probability from low distibutions (on discrit) and quantil distibution.
# This functions have prefix r,p,d and q, in this order, with the appropriate names for concrete distibution.


# --------> BOX PLOT <-------

# we used for detection outliners

boxplot(discoveries,col="red")
range(discoveries, na.pm=T)
median(discoveries, na.rm = T) # na.rm ignored NA values from sample
 
q1 <- quantile(discoveries, na.rm=T)[2]
q3 <- quantile(discoveries, na.rm=T)[4]
qr <- IQR(discoveries, na.rm = T)

q1
q3
q1-1.5*qr  #f1
q3 - 3*qr #f3
q1 - 3* qr #F1
q3 + 3*qr
max(discoveries[discoveries<q3+1.5*qr], na.rm=T)


#---------> EMPIRICAL DISTRIBUTION FUNCTIONS <--------

# Let it is (X_{1}, ...., X_{n}) sample from distibution F.
# F_{n}(X)=1/n sun(k=1, n)I{X_{k}<=x}
# is emirical distribution function.
#example:

x <- rpois(20, lambda = 3)
table(x)
Fn <- ecdf(x)
plot(Fn,main="Empirical distibution funtion")


# Theorem [Givenko-Kaneli]:

#P{lim sup|F_{N}(x)-F(x)|=0}=1
#example:

x <- runif(1000)
Fn <- ecdf(x)
plot(Fn, main="Empirical distibution funtion")
curve(punif(x), from=-1, to =2, add=T, col="red")
Fn
x
#task:  Built the histogram, with given data. 
#Based on his looks give estimates which distributions best describes 
#its data and add density curve of this distribution on the histogram. 
#Data:
  x<- c(0.20461484, 1.08674044, 0.03856004, 0.02560224, 0.07928007, 0.02340203, 0.19352116, 1.23953988,
 1.19405939, 1.06024342, 0.17020231, 0.09084827, 0.28421320, 0.04786419, 0.43709257, 0.02565908,
 0.54787534, 0.60735597, 0.65346201, 1.47148633, 0.68876187, 0.80113815, 0.92430191, 1.24893579,
 0.38591012, 0.43479177, 1.10081436, 0.70354737, 0.23738834, 1.79175686, 0.13811964, 0.71256143,
 0.50764806, 0.81095308, 1.47837866, 0.37798366, 0.11811460, 0.75100736, 0.20178296, 0.08794913,
 0.06401065, 0.28292047, 0.23669375, 0.57242330, 0.73547956, 0.61130502, 0.79899670, 1.30857987,
 0.79412217, 0.15405063, 0.70493104, 0.13028673, 0.08695839, 0.70228993, 0.06374205, 1.47505467,
 0.32026473, 0.55152157, 0.31690261, 0.75443969, 0.51264233, 0.07227614, 0.44484945, 1.18322093,
 2.19167193, 0.09054506, 0.65836795, 0.03997710, 1.35456828, 0.03298052, 0.44563128, 0.59318928,
  0.21952265, 0.26990897, 0.33004873, 0.60127290, 1.18151449, 0.02101827, 0.38136168, 0.37967533,
  0.72016394, 0.07404668, 0.84811450, 0.20616675, 0.13154191, 1.37544235, 0.31510046, 0.37547524,
  0.93996441, 0.54370520, 0.20721877, 0.75727264, 0.20043624, 0.24302641, 0.02929712, 0.22780797,
  0.03895056, 0.15394162, 0.06309514, 0.42370784)
  hist(x,
       col="lightblue",
       main="Data",
       xlim = range(0,2.5),
       ylim=range(0,40),
       border="red")
  curve(x,col="grey")
  range(x)


#task 2:(SIMULATED) 
#Simulated trowing dice for the game. Calculate frequency pop up sixes in 1000 experiments.
# Build histogram frequency
  
sample(6,1, prob=rep(1/6,6))
s <- sample(6,1000, prob = rep(1/6,6), replace=TRUE)  
mean(s==6) # simular sum(s==6)/length(s)

hist(s,main="", col="lightblue", border="green")

# task3:
# Simulate trowing dice and coin.
# a) write a set of all outcomes

dice <- c(1,2,3,4,5,6)
coin <- c("letter", "head") 
matrix.outputs <- outer(dice,coin,FUN = "paste", sep=" ")
matrix.outputs

# b) Does every outcomes equally probaly? Estimate probability outcome "5 head"?

# output every outcome in vectors
vector.outcome <- as.vector(matrix.outputs)
# Find position outcome "letter 5" in vector

head5 <- which(vector.outcome=="5 head")
# generate 1000 vector elements from set 1:12 on similar way 

simulation <- sample(length(vector.outcome),1000,replace=T)

# estimate probability on frequency

mean(simulation == head5)

#task3: 
#Player trowing picado on the table on which is tree concentrical circle
# radius 5,10,15cm. Biggest circle is into a square with side 30cm.
#Every site od table is equally.



# a) Write function arrow() who simulate game. 
#(Function shold by output: 
# 1-if a hit circuit,
# 2- for second cicrle,
# 3-for threet circle,
#-1-is arrow hit squared)

arrow<- function(){
  # put cordinat center in center of cicrle and in radndom way choose x and y 
  #cordinates for hit point (x,y) are out of [-15,15]x[-15,15]
  
  poz<- runif(2,-15,15)
# calculate distance point form centre
  
  r <- norm(poz, type="2") #equivalent: sqrt(sum(poz^2))
  
  if(r<=5) return(1)
  else if(r>5 & r<=10) return(2)
  else if(r>10 & r<=15) return(3)
  else  return(-1)
}

# b) estimate probability to be hit 1 respectively 2 circle

# used function replicates whit his calling 1000 numbers we call function arrow() and
# results of this call we put in one vector

simulation1 <- replicate(1000, arrow(), simplify = "array")
table(simulation1)

simulation1arrow<- function(){
  # put cordinat center in center of cicrle and in radndom way choose x and y 
  #cordinates for hit point (x,y) are out of [-15,15]x[-15,15]
  
  poz<- runif(2,-15,15)
# calculate distance point form centre
  
  r <- norm(poz, type="2") #equivalent: sqrt(sum(poz^2))
  
  if(r<=5) return(1)
  else if(r>5 & r<=10) return(2)
  else if(r>10 & r<=15) return(3)
  else  return(-1)
}

# b) estimate probability to be hit 1 respectively 2 circle

# used function replicates whit his calling 1000 numbers we call function arrow() and
# results of this call we put in one vector

simulation1 <- replicate(1000, arrow(), simplify = "array")
table(simulation1)

simulation1


frequency <- table(simulation1)/1000
frequency

# if we theoreticaly calcaualte probability, like geometrical probability 
# using formula: P(A)=m(A)


frequency <- table(simulation1)/1000
frequency

# if we theoreticaly calcaualte probability, like geometrical probability 
# using formula: P(A)=m(A)/m(square), we get simular:

#     -1      1       2       3
#  0,21460  0,08727  0,26180  0,43633


# Each player alternately throwing three arrows on the table. In begin game, each player has 20 points.
# if a player hit the first circle he lost 1 point, second lost 2 point, third 5 and outside a circle 10 points.
# Player A start game, and the game ends when one of the players lost all points. Simulated game. 
# Write function picado() who return 1 if player A win, respectively 2 if B win


# we built anather function who count how need take away points player after one circle of game.
# We give this function vector whit mark hit filds.


points <- function(x){
  circle.1 <- sum(x==1)
  circle.2 <- sum(x==2)
  circle.3 <- sum(x==3)
  square <- sum(x==-1)
  
  return(circle.1+3*circle.2+5*circle.3+10*square)
  
  
  
  
  }

# we wont to write function picado() which return 1 if is win player A, or 2 in if not

picado <- function(){
  
  points.A <- 20
  points.B <- 20
  
  #note: Pointer that player A is in his turn in aritmertic expression is T, and F 0
  
  A.on.way <- TRUE
   while(points.A*points.B>0){
     # subtract point from player who is on turn
     
     points.A <- points.A-A.on.way*points(replicate(3,arrow()))
     points.B <- points.B-(!A.on.way)*points(replicate(3,arrow()))
     
     
     
   
  # we change players
  A.on.way<-!A.on.way
   }
  # who first lost points he lost game
  ifelse(points.A<=0 , return(2), return(1))
  
}
# estimate probability to win player who started game, player A
# what we expext?

s <- replicate(1000,picado())
mean(s==1)
mean(s==2)














