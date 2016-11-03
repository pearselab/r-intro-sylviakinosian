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

for (i in 1:20){
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
#use the same inputs as gompPop
#loop through the f(x) for each value of time
#Thank You Marley Haupt

gompTime <- function(time, a, b, c){
    pop <- c(NA)
    for (i in 1:length(time)){
      pop[i] <- gompPop(i,a,b,c)
    }
    plot(x=time, y=pop, xlab="Time", ylab="Pop Size", main="Gomp Style")
}

#7. The biologist has fallen in love with your plotting function, but wants
# to color y values above a as blue and y values above b as red. Change your
# function to allow that.

gompMagic <- function(time, a, b, c){
    pop <- c(NA)
    for (i in 1:length(time)){
      pop[i] <- gompPop(i,a,b,c)
      if (pop > a){
        color[i] = "blue"
      }else{
        color[i] = "black"
      }
      if (pop > b){
        color[i] = "red"
      }else{
        color[i] = "black"
      }
    }
    plot(x=time, y=pop, xlab="Time", ylab="Pop Size", main="Gomp Style", col = color)
}

#8 You are beginning to suspect the biologist is taking advantage of you.
# Modify your function to plot in purple any y value that is above a and b.

gompPurp <- function(time, a, b, c){
  pop <- c(NA)
  for (i in 1:length(time)){
    pop[i] <- gompPop(i,a,b,c)
    if (pop > a & pop > b){
      color[i] = "purple"
    }else{
      color[i] = "black"
    }
  }
  plot(x=time, y=pop, xlab="Time", ylab="Pop Size", main="Gomp Style", col = color)
}

#9 f(x) that draws boxes with a specified h & w

box <- function(height, width){
    cat(replicate(width,"*"))
    cat("\n")
    for (i in 1:height){
      cat("*",replicate((width-2)," "),"*")
      cat("\n")
    }
    cat(replicate(width,"*"))
    cat("\n")
}

#10. Modify your box function to put text centred inside the box
# count the number of characters in the word input, define as width

wordBox <- function(height, width, word){
  n <- nchar(word)
  cat(replicate(width,"*"))
  cat("\n")
  for (i in 1:height){
    cat("*",replicate(((width-n)/2)," "),word,(width," "),"*")
    cat("\n")
  }
  cat(replicate(width,"*"))
  cat("\n")
}


