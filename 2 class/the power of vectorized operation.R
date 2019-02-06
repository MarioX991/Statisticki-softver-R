
x <- rnorm(5)
x
# R - specific programming loop
for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# convencional programming loop

for (j in 1:5){
print(x[j])
}

# ---------------------------------------------------------

N <- 100
a <- rnorm(100)
b <- rnorm(100)

# Vectorized approach

c <- a * b # faster way just put largest N and see
 
# De-vectorized approach

#NA - not value create empty vector
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i]*b[i]
}














