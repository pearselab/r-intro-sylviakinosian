#1 loop that prints numbers 20 to 10
for (i in 20:10){
  print(i)
}

#2 calcluate if a number is even
for (i in 20:10){
  if (i %% 2 == 0){
    print(i)
  }
}

#3 calculate if a number is a prime number
prime <- function(x){
  for (i in (x-1):2){
    n <- x %% i
  if(n == 0){
    return(FALSE)
   }
  }
  return(TRUE)
}

#4 loop that determines if a number is divisible by five or a prime number
for (i in 1:20){
  for (i in (x-1):2){
    n <- x %% i
    if(n == 0){
      cat("Job:", x)
    }
  }
  if (prime == TRUE){
	print("Job: NUMBER")
 }
}
