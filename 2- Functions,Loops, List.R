#-----> FUNCTION <-----
#------> LOOP <------
#------> LIST <------



# sintax for writing function

# func.name <- function(argument){

      # statement

# }

#

pow <- function(x,y){
  reslut <- x^y
  print(paste(x, "na stepen", y, "je", reslut))
}

# if we want to function return some the results

pow2 <- function(x,y){
  
  result <- x^y
  result # return(result)
}

# call function

pow(2,3)
pow2(2,3)

pow(x=2,y=3) # we can be mush more clear when we put argument
pow(y=3,x=2)

#-----> LOOPS <--------
# FOR:

for (i in 5:10){
  print("Hello R")
}

for (i in 1:5){
  h[i] <- i^2
  }

# IF/ELSE

x <- 5
if (x%%2==0){
  print("x je paran")
}else
  print("x je neparan")
# put all in one row
ifelse(x%%2==0, print("x je paran"), print("x je neparan"))

# generate random number used default normal distribution
# rm function used to remove variable

rm(answer)
x <- rnorm(1) # rnorm normal distribution
if(x>1){
  answer <- "Greater than 1"
}else
  answer <- "Less than 1"

# if-else statement -nesting
rm(answer)
x <- rnorm(1)
if(x>1){
  answer <- "Greater than 1"
}else{
  if(x>=1){
    anwer <- "Between -1 and 1"
  }else{
    answer <- "Less than 1"
  }
}
  
# better way to used else if staement is chaining
rm(answer)
x <- rnorm(1)
if(x>1){
  answer <- "Greater than 1"
}else if(x>=-1){
  answer <- "Between -1 and 1"
}else{
  answer <- "Less than 1"
}

# WHILE
 counter <- 1
 while(counter < 12){
   print(counter)
   counter <- counter+1
 }

#-----> LIST <------

# list is generic vector who contain ather objects
n <- c(2,3,5)
s <- c("aa","bb","cc","dd","ee")
b <- c(TRUE, FALSE, TRUE, FALSE, FALSE)
lst <- list(n,s,b) #lst contains copy from n,s,b
lst[1]
lst[2]

# this way we get copy of first ie second element from list
# if we want to access some element from list we used [[]]

lst[[1]]

# and then we can change contain of list

lst[[2]] <- c("a","b")
lst[[2]][1] <- "g"
lst[2]



