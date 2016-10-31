#1: create a dataset of 10 variables each drawn from a Normal distribution with different mean and variances
#rnorm for a random draw for each mean, runif with a min = 0 for sd b/c cd cannot be less than 0

replicate(10, rnorm(1,rnrom(1),runif(1, min = 0)), simplify = "array")

#2: make your summary function
# ft. mean, cd, quantiles
 
reptar <- rnorm(50, rnorm(1), runif(1, min = 0)) 

best.summary <- function(x){
	min <- min(x)
	mean <- mean(x)
	max <- max(x)
	quan2 <- quantile(x, probs = 0.025)
	quan5 <- quantile(x, probs = 0.5)
	quan9 <- quantile(x, probs = 0.975)
	m <- matrix(data= c(min, mean, max, quan2, quan5, quan9), nrow = 1, ncol = 6, 
			dimnames = list(NULL,c("Min","Mean","Max","0.025","0.5","97.5"))) 
	return(m)
}

#3: write a summary f(x) to summarise datasets only containing catagorical data


