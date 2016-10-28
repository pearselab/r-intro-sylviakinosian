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
  if(n == 0 | x == 1){
    return(FALSE)
   }
  }
  return(TRUE)
}

#4 loop that determines if a number is divisible by five or a prime number
#i know this isn't the best way to do this but i'm lost as how to make it more compact/better
for (i in 1:20){
    if (i == 5){
     cat("Good Job:", i, "\n")
    }
    if (i %% 5 == 0){
      cat("Good:", i, "\n")
    }
    if(prime(i) == TRUE){
    cat("Job:", i, "\n")
      }
}


#5 function that calculates pop size using the Gompertz curve
gompPop <- function(time, a, b, c){
    y <- a * exp(-b * exp(-c * time))
    cat("pop size =", y)
}

#6 plot the progression of #5 over time
gompTime <- function(time, a, b, c){
  y <- a * exp(-b * exp(-c * time))
  t <- time
  n <- seq(0:100)
  for (i in 0:t)
    plot(n,y)

}

#7

#8

#9f(x) that draws boxes with a specified h & w
box <- function(height, width){
    for (i in 1:width){
      cat("*")
      for (j in 1:height){
      cat("*\n")
    }
  }
}
