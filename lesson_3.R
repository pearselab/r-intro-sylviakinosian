#1. implement a cat class with race and print methods
new.cat <- function(weight, breed){
	output <- list(weight=weight, breed=breed)
 	class(output) <- "cat"
	return(output)
} 

Iris <- new.cat(weight=2.5, breed="calico")
Yin <- new.cat(weight=5, breed="bombay")

race <- function(first, second){
    if(!inherits(first, "cat") | !inherits(second, "cat"))
		stop("Need two cats!")
	  if(first$weight < second$weight){
		print("First cat won the race!")
		return(first)
	  } else{
	  print("Second cat won the race!")
	  return(second)
	 }
}

print.cat <- function(x, verbose=F, ...){
  if(verbose==T){
	  cat("This", x$breed, "weighs", x$weight, "kg\n")
  } else cat("Meow\n")
}

#2 implement a point class that hold x and y information for a point in space

new.point <- function(x, y){
        output <- list(x=x, y=y)
        class(output) <- "point"
        return(output)
} 

point1 <- new.point(x=2, y=3)
point2 <- new.point(x=4, y=5)

#3 distance method that calculates the distance between two points in space

dist <- function(first, second){
	if(!inherits(first, "point") | !inherits(second, "point"))
		stop("Need two points!")
	n <- sqrt(((second$x^2)-(first$x^2))+((second$y^2)-(first$y^2)))
		return(n)
}

dist(point1,point2)

#4 Implement a line class that takes two point objects and makes a line between them.

new.line <- function(first, second){
    if(!inherits(first, "point") | !inherits(second, "point"))
    stop("Need two points!")
    output <- list(point1 = first, point2 = second)
    class(output) <- "line"
    return(output)
}

segment <- new.line(point1,point2)

draw <- function(line){
  if (!inherits(line,"line"))
    stop("Need two points!")
  x<-c(line$point1$x,line$point2$x)
  y<-c(line$point1$y,line$point2$y)
  plot(x,y)
  segments(x0=x[1],y0=y[1],x1=x[2],y1=y[2],col='red')
}

#5
 