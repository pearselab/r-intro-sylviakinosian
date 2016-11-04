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
    return(a * exp(-b * exp(-c * time)))
}

#6 plot the progression of #5 over time
#use the same inputs as gompPop
#loop through the f(x) for each value of time
#Thank You Marley Haupt, 
#also for loops are sometimes unecessary!!!

gompTime <- function(time, a, b, c){
    t <- c(1:time)
    plot(t, gompPop(t,a,b,c), xlab="Time", ylab="Pop Size", main="Gomp Style", type = "l")
}

#7. The biologist has fallen in love with your plotting function, but wants
# to color y values above a as blue and y values above b as red. Change your
# function to allow that.

gompMagic <- function(time, a, b, c){
    t <- c(1:time)
    color <- "black"
    color[gompPop(t,a,b,c) > a] <- "blue"
    color[gompPop(t,a,b,c) > b] <- "red"
    plot(t, gompPop(t,a,b,c), xlab="Time", ylab="Pop Size", main="Gomp Style", type = "l", col = color)
}

#8 You are beginning to suspect the biologist is taking advantage of you.
# Modify your function to plot in purple any y value that is above a and b.

gompPurp <- function(time, a, b, c){
  t <- c(1:time)
  color <- "black"
  color[gompPop(t,a,b,c) > a & gompPop(t,a,b,c) > b] <- "purple"
  plot(t, gompPop(t,a,b,c), xlab="Time", ylab="Pop Size", main="Gomp Style", type = "l", col = color)
}

#9 f(x) that draws boxes with a specified h & w

box <- function(height, width){
    cat(rep("*",width),"\n")
    for (i in 1:(height-2)){
      cat("*",rep(" ",(width-2)),"*","\n")
    }
    cat(replicate(width,"*"),"\n")
}

#10. Modify your box function to put text centred inside the box
# count the number of characters in the word input, define as width
#replicate = evaluate this expresstion x times
#use rep here
#if nchar() > width, use nchar
#h & w made even so the text can 

wordBox <- function(height, width, word){
  #make the height odd to properly center the word
  if (is.integer(height/2)){
    height <- height + 1
  }
  n <- nchar(word)
  x <- width/2
  if (n > x){
    print("need a wider box")
  }else{
    cat(rep("*",width),"\n")
    for (i in 1:(height-2)){
      cat("*",rep(" ",(width-2)),"*")
      cat("\n")
    }
    if (i == height/2){
      
    }
    if (is.integer(x)){
        cat("*",rep(" ",x),word,rep(" ",x),"*")
      }else{
        cat("*",rep(" ",(x+1)),word,rep(" ",(x+1)),"*")
      }
    }
}
  cat(rep("*",width),"\n")
}



#11
