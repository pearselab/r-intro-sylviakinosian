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
  if (height %% 2 == 0){
    height <- height + 1
  }
  n <- nchar(word)
  x <- width/2
  if (n > (width-2)){
    print("need a wider box")
  }else{
    cat(rep("*",width),"\n")
    for (i in 1:(floor(height/2)-1)){
      cat("*",rep(" ",(width-2)),"*")
      cat("\n")
    }
    cat("*",rep(" ",x),word,rep(" ",x),"*")
    for (i in (floor(height/2)-2:height)){
      cat("*",rep(" ",(width-2)),"*")
      cat("\n")
    }
    cat(rep("*",width),"\n")
    }
    
}

}

if (is.integer(x)){
  cat("*",rep(" ",x),word,rep(" ",x),"*")
}else{
  cat("*",rep(" ",(x+1)),word,rep(" ",(x+1)),"*")
}
}


#11

#12. In ecology, hurdle models are often used to model the abundance of species found on surveys. 
#They first model the probability that a species will be present at a site (drawn, for example, 
#from a Bernoulli distribution) and then model the abundance for any species that is present 
#(drawn, for example, from the Poisson distribution). 

#Write a function that simulates the abundance
#of a species at n sites given a probability of presence (p) and that its abundance is drawn from 
#a Poisson with a given λ. Hint: there is no Bernoulli distribution in R, but the Bernoulli is a 
#special case of what distribution?...

#model p of species at a site (binom) -> 1 = species presence 
#if present, model abundance for any species that is present

abundance <- function(sites){
  y <- c(1:sites)
  for (i in 1:sites){
    p[i] <- rbinom(1,1,0.5)
  
    if (p = 1){
      a <- rpois(1,runif(1,min=0))
    }else{
      return(p)
    }
  }
}

#13. An ecologist really likes your hurdle function (will you never learn?). Write them a 
#function that simulates lots of species (each with their own p and λ ) across n sites. Return the 
#results in a matrix where each species is a column, and each site a row (this is the standard used 
#for ecology data in R).
