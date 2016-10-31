#1: create a dataset of 10 variables each drawn from a Normal distribution with different mean and variances

replicate(10, rnorm(1, .Random.seed[1], .Random.seed[1]), simplify = "array")
replicate(10, rnorm(1), simplify = "array")

#2: 

