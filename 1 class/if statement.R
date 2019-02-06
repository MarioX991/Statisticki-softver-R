

#---- -2 ---- -1 ---- 0 ---- 1 ---- 2 ----


#generate random number used default normal distribution
# rm used to remove variable


rm(answer)
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"  
} else{
  answer <- "Less then 1"
}

# if else statement -nesting
rm(answer)
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"  
} else{
   if(x >= -1){
     answer <- "Between -1 and 1"
   }else{
       answer <- "Less than 1"
     }
} 
# better way is used else if statemant-- chaining

rm(answer)
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"  
} else if(x >= -1){
    answer <- "Between -1 and 1"
}else{
    answer <- "Less than 1"
}