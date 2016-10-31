#1: create a dataset of 10 variables each drawn from a Normal distribution with different mean and variances

replicate(10, rnorm(10), simplify = "array")
