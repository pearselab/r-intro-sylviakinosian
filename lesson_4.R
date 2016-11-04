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
#number of categories, 
#types of classes in a guild

sapply

guild <- c("warrior","mage","warrior","rouge","preist",
                                "druid","druid","druid","hunter","warlock"))

sum.class <- function(data){
  if(is.numeric(data)){
    print("nope, need categorical data!")
  }
  w <- grep("warrior",data)
  m <- grep("mage",data)
  r <- grep("rouge",data)
  p <- grep("preist",data)
  d <- grep("druid",data)
  h <- grep("hunter",data)
  k <- grep("warlock",data)
  cat("warrior",w,"\n","mage",m,"\n","rouge",r,"\n","preist",p,"\n","druid",d,"\n",
        "hunter",h,"\n","warlock",k,"\n")
}


#4 sapply

sum.any <- function(data){
  if(is.numeric(data)){
    best.summary(data)
  }
  if(!is.numeric(data)){
    sum.class(data)
  }
}

