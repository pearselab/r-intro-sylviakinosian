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

#cut divides the range of a vector (x) into intervals and codes the values in x according to which
#interval they fall : cut (x, breaks, labels)
Z <- stats::rnorm(10000)
table(cut(Z, breaks = -6:6))
sum(table(cut(Z, breaks = -6:6, labels = FALSE)))
sum(graphics::hist(Z, breaks = -6:6, plot = FALSE)$counts)

#diff - lagged differences diff(x, .. )
#x - numeric vector; lag - indicates lag (int); differences - order of difference (int)
diff(1:10, 2)
diff(1:10, 2, 2)

#dim - retrieve or set dimensions for an object
x <- 1:12 ; dim(x) <- c(3,4) #sets values, df
dim(c) #retrives rows, columns

#rownames, colnames - get row or column names of a matrix-like object
#names - set or get names of an object
z <- 1:3
names(z)
## assign just one name
names(z)[2] <- "b"
names(z)[1] <- "cats"
names(z)[3] <- "kool"

#expand.grid - create a data frame from all combinations of factor variables
require(utils)

expand.grid(height = seq(60, 80, 5), weight = seq(100, 300, 50),
            sex = c("Male","Female"))

x <- seq(0, 10, length.out = 100)
y <- seq(-1, 1, length.out = 20)
d1 <- expand.grid(x = x, y = y)
d2 <- expand.grid(x = x, y = y, KEEP.OUT.ATTRS = FALSE)
object.size(d1) - object.size(d2)
##-> 5992 or 8832 (on 32- / 64-bit platform)

#eigen - spectral decomposition of a matrix
#Computes eigenvalues and eigenvectors of numeric (double, integer, logical) or complex matrices.
eigen(cbind(c(1,-1), c(-1,1)))
eigen(cbind(c(1,-1), c(-1,1)), symmetric = FALSE)
# same (different algorithm).

#"%*%" - matrix multiplication - multiplies two conformable matrices
#x %* y
x <- 1:4
(z <- x %*% x)    # scalar ("inner") product (1 x 1 matrix)
drop(z)             # as scalar
y <- diag(x)
z <- matrix(1:12, ncol = 3, nrow = 4)
y %*% z
y %*% x
x %*% z

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
