################################################
## Exercises ###################################
################################################

# c - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")

# cat - concatenate and print
# outputs the objects, concatenating the representations - much mess conversion than print
# from help: cat prints the iterrations of the function
iter <- stats::rpois(1, lambda = 10)
## print an informative message
cat("iteration = ", iter <- iter + 1, "\n")

#cbind - combine R objects y rows or columns, includes rbind
#combines specific outputs of an Bayesian MCMC (the "out" object)
pop<-rbind(out[[1]][,101:102],out[[2]][,101:102])

#col, row - returns a matric of intefers indicated their column or row number in a matrix-like object
#or a factor indicating the column or row labels

################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."
