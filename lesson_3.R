#1. implement a cat class with race and print methods
new.cat <- function(weight, breed){
	output <- list(weight=weight, breed=breed)
 	class(output) <- "cat"
	return(cat)
} 

Iris <- new.cat(weight=5, breed="calico")
Yin <- new.cat(weight=12, breed="bombay")

race <- function(first, second){
       	if(!inherits(first, "cat") | !inherits(second, "cat"))
		stop("Need two cats!")
	if(first$weight < second$weight){
		print(first, " won the race!")
		return(first)
	}
	print(second, " won the race!")
	return(second)
}


