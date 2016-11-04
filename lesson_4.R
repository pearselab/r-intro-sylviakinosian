#1: create a dataset of 10 variables each drawn from a Normal distribution with different mean and variances
#rnorm for a random draw for each mean, runif with a min = 0 for sd b/c cd cannot be less than 0

replicate(10, rnorm(1,rnorm(1),runif(1, min = 0)), simplify = "array")

#better option
reptar <- rep(rnorm(10,rnorm(1),runif(1, min = 0)),1)

#2: make your summary own function
# ft. mean etc, quantiles
#I couldn't figure out how to use apply to get quantiles, but min/mean/max is better than nothing I suppose.
 
#make a data frame
reptar <- rep(rnorm(10,rnorm(1),runif(1, min = 0)),1)
r2 <- rep(rnorm(10,rnorm(1),runif(1, min = 0)),1)
new <- cbind(reptar,r2)

best.summary <- function(data){
	min <- apply(data,2,min)
	mean <- apply(data,2,mean)
	max <- apply(data,2,max)
	#quan2 <- apply(data,2,quantile)
	#quan5 <- quantile(new, probs = 0.5)
	#quan9 <- quantile(x, probs = 0.975)
	m <- matrix(data= c(min, mean, max), nrow = 3, ncol = ncol(data), 
			dimnames = list(c("Min","Mean","Max"),c(colnames(data)))) 
	return(m)
}

best.summary(new)

#3: write a summary f(x) to summarise datasets only containing catagorical data
#number of categories, 
#mood of english v socts, who is happier
#caffeine on mood - mood, caf, person
#species, cover, abundance

#4 sapply

() call a function(
[] subset
)

