#1: create a dataset of 10 variables each drawn from a Normal distribution with different mean and variances
#rnorm for a random draw for each mean, runif with a min = 0 for sd b/c cd cannot be less than 0

replicate(1, rnorm(10,rnorm(1),runif(1, min = 0)), simplify = "array")

#2: make your summary own function
# ft. mean etc, quantiles
#I couldn't figure out how to use apply to get quantiles, but min/mean/max is better than nothing I suppose.
 
reptar <- replicate(10, rnorm(10,rnorm(1),runif(1, min = 0)), simplify = "array")

best.summary <- function(data){
  if(!is.numeric(data)){
    print("nope, need numeric data!")
  }
	min <- apply(data,2,min)
	mean <- apply(data,2,mean)
	max <- apply(data,2,max)
	#quan2 <- lapply(data,quantile, probs = 1)
	#quan5 <- quantile(new, probs = 0.5)
	#quan9 <- quantile(x, probs = 0.975)
	m <- matrix(data= c(min, mean, max), nrow = 3, ncol = ncol(data), 
			dimnames = list(c("Min","Mean","Max"),c(colnames(data)))) 
	return(m)
}

best.summary(reptar)

#3: write a summary f(x) to summarise datasets only containing catagorical data
#tells you how many unique characters there are in your categorical variable
sapply

lttrs <- replicate(2,sample(letters[1:26],10,replace=T))

sum.cat <- function(data){
  if(is.numeric(data)){
    print("nope, need categorical data!")
  }
  x <- unique(data)
  y <- apply(x, 2, length)
  return(y)
  m <- matrix(data= c(min, mean, max), nrow = 3, ncol = ncol(data), 
              dimnames = list(c("Min","Mean","Max"),c(colnames(data)))) 
  return(m)
}


#4 sapply

sum.any <- function(data,...){
  if(is.numeric(data)){
    best.summary(data)
  }
  if(!is.numeric(data)){
    sum.class(data)
  }
}

