
# c()- function that combines numbers in vector
MyFirstVector <- c(3,45,56,732)
MyFirstVector

# is.numeric() - check it is it numeric argument
is.numeric(MyFirstVector) 
#   R store number like double and because that finction return False
is.integer(MyFirstVector)

is.double(MyFirstVector)

V2 <- c(3L, 12L, 234L, 0L)
is.numeric(V2)
is.double(V2)

# R automaticly transfer number in character in vector

V3 <- c('a', 'b', 'B23', "Hello", 7)
V3
is.character(V3)
is.numeric(V3)


seq() #sequence - like ':'
rep() # replicate

seq(1,15)
1:15

# seq()  is mach more flexible,  because in seq we can put step 
seq(1,15,2)
z <- seq(1,15,4)
# req(number, how much relicates that number)
rep(3,50)
d <- rep(3,50)

# relicate character
rep('a',5)

# replicate vector
x <- c(80,20)
rep(x,3)










