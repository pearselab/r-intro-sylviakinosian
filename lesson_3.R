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

point1 <- new.point(x=2, y=4)
point2 <- new.point(x=6, y=5)

#3 distance method that calculates the distance between two points in space

dist <- function(first, second){
	if(!inherits(first, "point") | !inherits(second, "point"))
		stop("Need two points!")
	n <- sqrt(((second$x^2)-(first$x^2))+((second$y^2)-(first$y^2)))
		return(n)
}

dist(point1,point2)

#4 Implement a line class that takes two point objects and makes a line between them.

#plot.line <- draw
#plot(segment)

#circle function to plot a circle

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

#5 Implement a polygon class that stores a polygon from point objects. 
#Hint: a polygon is really just a load of lines.

point3 <- new.point(x=2,y=5)

seg2 <- new.line(point2,point3)
seg3 <- new.line(point3,point1)

plot.pg <- function(first, second, third){
  if(!inherits(first, "line") | !inherits(second, "line") | !inherits(third,"line"))
    stop("Need lines!")
  output <- list(first = first, second = second, third = third)
  class(output) <- "polygon"
  return(output)
}

poly1 <- plot.pg(segment,seg2,seg3)

#6 Write plot methods for point and line objects.

plot.point <- function(point,...){
  if (!inherits(point,"point"))
    stop("Need a point")
  plot(point,...)
}

#same as above in #4
plot.line <- function(line){
  if (!inherits(line,"line"))
    stop("Need two points!")
  x<-c(line$point1$x,line$point2$x)
  y<-c(line$point1$y,line$point2$y)
  plot(x,y)
  segments(x0=x[1],y0=y[1],x1=x[2],y1=y[2],col='red')
}

#7. Write a plot method for a polygon. Hint: if this isn’t trivial, you’re doing something wrong.

plot.polygon <- function(polygon){
  if (!inherits(polygon,"polygon"))
    stop("Need a polygon!")
  plot(poly1$first)
  segments(plot(poly1$second))
  draw.line(poly1$third)
}

#8. Create a canvas object that the add function can add point, line, circle, and polygon objects to. Write plot and print methods for this class.

#9. Implement a circle object that takes a point and a radius and stores a circle. Don’t make a circle out of lines!
  