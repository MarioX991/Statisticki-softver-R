#---------> VARIABLE <-----------
# --------> VECTORS <------------
#---------> MATIRX  <------------


#**** Variable type****

# Integer:
x <- 2L # without 'L', R by default stored variable like duble
typeof(x)

# Double:
y<- 2.5
typeof(y)

# Complex
z <- 3+2i
tyoeof(z)

# Character
a <- 'H'
typeof(a)

# Locical

q1 <- T
typeof(q1)

q2 <- F
typeof(q2)

# we can assign a variable value using ( = ) or (->)
# " = "
u = 5
# " -> "

9 -> j

#---------> Logical operators <---------
# True T
# False F

4 < 5
10 > 1000
4 == 8
4!= 4

# ==
# !=
# <
# >
# >=
# <=
# !
# | 
# &
# isTRUE(x)

k1 <- 4 < 5
k1
typeof(k1)

k2 <- !(6>4)
k2
typeof(k2)

k1 | k2
k1 & k2


isTRUE(k1)

# Aritmetrics operation +,-,*, /
# Elementar function: exp(), sin(), cos(), log()...
# Logic operators: ==,<=,>=,<,>,!,|,&,isTRUE()

A <- 10
B <- 4

C <- A+B
C
#variable 1
var1 <- 2.5
#variable 2
var2 <- 4
 result <- var1 / var2
 result
 # function
 answer <- sqrt(var2)
 answer
 
 #character operation
 
 greeting <- "hello"
 name <- "Mario"
 massage <- paste(greeting, name) #paste function concatenate string
 paste
 massage


# -------> VECTORS <---------
 
 # Numeric vector
 # Charaqcter vector
 # Boolean vector

 # in R many fuction work with vector and for this reason is best thet data is in vector type 
 # or matrix
 # Create vector:
 
 #c()- function that combines numbers in cetor
 MyFirstVector <- c(3,45,56,73)
 MyFirstVector
 
 # is.numeric() chack is it numeric argument
 is.numeric(MyFirstVector)
# R store number like double and becouse that function return False
 is.integer(MyFirstVector)
 
 is.double(MyFirstVector)
 
 V2 <- c(2L,12L,234L,0L)
is.numeric(V2)
is.double(V2)
# R automaticly tranfer number in character in vector
V3 <- c("a","b","B23","hello",7)
V3
is.numeric(V3)
is.character(V3)
# seq() sequence like " : "
# rep() replicate

seq(1:15)
# it is simular 1:15
# seq i macj more flexible, because in seq we can put step
seq(1,15,2)  #(start,stop,step)
z <- seq(1,15,4)
z
z1 <- seq(5,1,-3)
z1
# rep(number, how much replicates that number)
rep(3,50)
d<-rep(3,50)

#replicates character
rep('a',5)
# replicate vector
x <- c(80,20)
i <- rep(x,4)
i1 <- rep(c(1,2,3),5)
#boolean vector 
h <- c(TRUE,FALSE)

# vector operation
v1 <- c(0,23,11,15,19,100,3,5,6)
v2 <- c(0,11,2,99,5,6,4,11,111)

v3 <- v1+v2
v4 <- v1-v2
v5 <- v1*v2
v6 <- v1<v2
v7 <- 5*v1
v8 <- v1/v2
v8


# recycling of vector - r copy and paste smaller vecotor until they reach the length 
# if grather vector is not multiple of smaller vector, if is not multiple R give a error but he do recycling

v11 <- c(1,2,3,4)
v9 <- v11+v2

# vector logic operation 

a<-c(1,2,333,441,5878,6,7)
b <-c(1,2,3,4,888,9,90)
a==b
a<b
a<=b
all(a==b) # if we wont to chack all element
all(a==a)

# function in R is also vector
cos(a) # function is used for every element in vector
log(a)

# acessing vector elements
#indexing in vector start whit one

a[3] #element in position 3

#we can grab some part of vector

a[c(1:4)] # grab element between position one and fourth
a[c(1,4)] # just grab element in position one and fourth
a[a<7] # used logic operation to grab element 
a[a!=6]

# if we put negative index, result is original vector without element in this position 
a[-4]
a[-c(1,3)]
a[-(1:3)] 

# we can grab element form our vectior used logic values vector witch is same lenght like our original vector
# we usuli call this logic vector mask

s <- c("a","h","j","p")
l <- c(T,F,F,T)
s[l]

# we can assign name elements of vectors
# this is similarly like in mathermatic we used f0g
v <-c("Ivo", "Andric")
names(v) <- c("Ime","Prezime")
v

# end now we can access elenemt using name
v["Ime"]

# ------> Some Vector functions <----------


# rev spin vector element
vec <- c(1,2,3,4,5)
vec <- rev(vec)
length(vec) # lenght vectors
vec

#------ > Important statistc <-------

sum(vec) #sumall elements in vector
min(vec) # x_(1)
max(vec) #x_(n)
range(vec) #x_(1),x_(n)
mean(vec) # sample middle
var(vec) # repair of sample dispersion
sd(vec) # standart deviation (sqrt(var(x)))

# Sorting vector
sort(vec)
sort(vec, decreasing = T) # sorting in decreasing 

# change vector elements

vec[2]<-0
vec[vec <5]<- 1
vec <- vec[1:4]


#------> Matrix<-----
M <- matrix(
  c(2,4,3,1,5,7,4,5,6),
  nrow = 3, ncol = 3, byrow = T) # fill matrix by rows(default is column)
M

M[2,3]#(row, column)
M[2,] # secound row
M[,3] # third column
M[,c(1,2)] # grab first and second columns
M[c(1,3),]





