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

#lower.tri and upper.tri - l/u parts of a matrix
#returns a matric of logials the same size of a given matrix with the entries TRUE
#in the lower or upper triangle
(m2 <- matrix(1:20, 4, 5))
lower.tri(m2)
m2[lower.tri(m2)] <- NA
m2

#gl - generate factor levels by specific the pattern of their levels
## First control, then treatment:
gl(2, 8, labels = c("Control", "Treat"))
## 20 alternating 1s and 2s
gl(2, 1, 20)
## alternating pairs of 1s and 2s
gl(2, 2, 20)

#identical - test object for exact equality
#returns true or false - good for if/while statements
## the infamous example:
identical(0., -0.) # TRUE, i.e. not differentiated
identical(0., -0., num.eq = FALSE)

#image - display a color image
#grid of rectangles with colors corresponding to the values in z
#math can be beautiful
require(grDevices) # for colours
x <- y <- seq(-4*pi, 4*pi, len = 27)
r <- sqrt(outer(x^2, y^2, "+"))
image(z = z <- cos(r^2)*exp(-r/6), col  = gray((0:32)/32))
image(z, axes = FALSE, main = "Math can be beautiful ...",
      xlab = expression(cos(r^2) * e^{-r/6}))
contour(z, add = TRUE, drawlabels = FALSE)

#library - loading/attaching and listing of packages
#library and require load and attach add-on packages.
library()                   # list all available packages
library(lib.loc = .Library) # list all packages in the default library
library(help = splines)     # documentation on package 'splines'
library(splines)            # attach package 'splines'
require(splines)            # the same
search()                    # "splines", too
detach("package:splines")

# if the package name is in a character vector, use
pkg <- "splines"
library(pkg, character.only = TRUE)
detach(pos = match(paste("package", pkg, sep = ":"), search()))

#length - of an object
length(x)
length(x) <- value

#jitter - ad a small amount of noise to a numeric vector
#jitter(x, factor = 1, amount = NULL)
round(jitter(c(rep(1, 3), rep(1.2, 4), rep(3, 3))), 3)
## These two 'fail' with S-plus 3.x:
jitter(rep(0, 7))
jitter(rep(10000, 5))

#ls - list objects // returns a vector of names of the objects in a specified envrionment
.Ob <- 1
ls(pattern = "O")
ls(pattern= "O", all.names = TRUE)    # also shows ".[foo]"
#rm(list=ls()) clears your working environment of stored variables

#mean, median, max, and min take their respective values for an object
x <- 1:4
mean(x)
median(x)
min(x)
max(x)

#paste (or paste0) - concatenate vectors after converting to character
(nth <- paste0(1:12, c("st", "nd", "rd", rep("th", 9))))

#data input - read.cvs, read.table
#Reads a file in table format and creates a data frame from it, with cases corresponding to 
#lines and variables to fields in the file.
read.csv(tf, fill = TRUE, header = FALSE,
         col.names = paste0("V", seq_len(ncol)))

#data output - write.csv, write.table
#prints its required argument x (after converting it to a data frame if it is not one nor a matrix) 
#to a file or connection.
## To write a CSV file for input to Excel one might use
x <- data.frame(a = I("a \" quote"), b = pi)
write.table(x, file = "foo.csv", sep = ",", col.names = NA,
            qmethod = "double")
## and to read this file back into R one needs
read.table("foo.csv", header = TRUE, sep = ",", row.names = 1)
## NB: you do need to specify a separator if qmethod = "double".

#normal distribution - Density, distribution function, quantile function and random generation for the 
#normal distribution with mean equal to mean and standard deviation equal to sd.
#rnorm, pnorm, dnorm, qnorm
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)
#used to graph, but also generate vectors or random numbers for use in other applications

#the uniform distribution - runif generations random numbers from a uniform distribution
u <- runif(20)

#the poisson distibution
#rpois generates random numbers from a poisson dist
rpois(n, lambda)
require(graphics)
-log(dpois(0:7, lambda = 1) * gamma(1+ 0:7)) # == 1
Ni <- rpois(50, lambda = 4); table(factor(Ni, 0:max(Ni)))

#rank - returns the sample ranks of the values in a vector
rank(x, na.last = TRUE,
     ties.method = c("average", "first", "last", "random", "max", "min"))

#sort & order - do this to a vectro or factor into ascending or descending order
#order (or sort.list) in used for more than one variable - eg dataframes
sort.int(x, partial = NULL, na.last = NA, decreasing = FALSE,
         method = c("shell", "quick", "radix"), index.return = FALSE)
order(..., na.last = TRUE, decreasing = FALSE,
      method = c("shell", "radix"))
sort.list(x, partial = NULL, na.last = TRUE, decreasing = FALSE,
          method = c("shell", "quick", "radix"))

#outer - The outer product of the arrays X and Y is the array A with dimension c(dim(X), dim(Y)) where 
#element A[c(arrayindex.x, arrayindex.y)] = FUN(X[arrayindex.x], Y[arrayindex.y]
x <- 1:9; names(x) <- x
# Multiplication & Power Tables
x %o% x
y <- 2:8; names(y) <- paste(y,":", sep = "")
outer(y, x, "^")
outer(month.abb, 1999:2003, FUN = "paste")
## three way multiplication table:
x %o% x %o% y[1:3]

#rep - replicate elements of vectors and lists
#replicated the values in x
## named factor
x <- factor(LETTERS[1:4]); names(x) <- letters[1:4]
x
rep(x, 2)
rep(x, each = 2)
rep.int(x, 2)  # no names
rep_len(x, 10)

#rowSums, colSums - form row and column sums and means for 
#numeric arrays or data frames
colSums (x, na.rm = FALSE, dims = 1)
rowSums (x, na.rm = FALSE, dims = 1)
colMeans(x, na.rm = FALSE, dims = 1)
rowMeans(x, na.rm = FALSE, dims = 1)

#seq - sequence generation of regular sequenced
seq(0, 1, length.out = 11)
seq(stats::rnorm(20)) # effectively 'along'
seq(1, 9, by = 2)     # matches 'end'
seq(1, 9, by = pi)    # stays below 'end'
seq(1, 6, by = 3)
seq(1.575, 5.125, by = 0.05)
seq(17) # same as 1:17, or even better seq_len(17)

#source - read r code from a file or connection
#source causes R to accept its input from the named file or URL or connection. 
## If you want to source() a bunch of files, something like
## the following may be useful:
sourceDir <- function(path, trace = TRUE, ...) {
  for (nm in list.files(path, pattern = "[.][RrSsQq]$")) {
    if(trace) cat(nm,":")
    source(file.path(path, nm), ...)
    if(trace) cat("\n")
  }
}

#which - give the TRUE indices of a logical object, allowing for array indices
which(x, arr.ind = FALSE, useNames = TRUE)
which(LETTERS == "R")
which(ll <- c(TRUE, FALSE, TRUE, NA, FALSE, FALSE, TRUE)) #> 1 3 7
names(ll) <- letters[seq(ll)]
which(ll)
which((1:12)%%2 == 0) # which are even?
which(1:10 > 3, arr.ind = TRUE)

#which.min // which.max - determines the location i.e., index of the (first) minimum or maximum of a numeric 
#(or logical) vector.
#works with NAs present - discards them
x <- c(1:4, 0:5, 11)
which.min(x)
which.max(x)

#set operations - performs set union, intersection, (asymmetric!) difference, equality and 
#membership on two vectors // setdiff, intersect, union
(x <- c(sort(sample(1:20, 9)), NA))
(y <- c(sort(sample(3:23, 7)), NA))
union(x, y)
intersect(x, y)
setdiff(x, y)
setdiff(y, x)
setequal(x, y)

#table - cross tabulation and table creation
require(stats) # for rpois and xtabs
## Simple frequency distribution
table(rpois(100, 5))
## Check the design:
with(warpbreaks, table(wool, tension))
table(state.division, state.region)

#with - evaluate an expression in an environment constructed from data, possibly 
#modifying (a copy of) the original data.
#with(data,expr...)
#data – Typically a list or data frame, although other options exist for with.
#expr – One or more expressions to evaluate using the contents of data (which are accessed directly), 
    #where the commands must be wrapped in braces if there is more than one expression to evaluate.
df <- data.frame(a=1:5,b=2:6)
df
a b
1 1 2
2 2 3
3 3 4
4 4 5
5 5 6

#returns the value of the evaluated expr
with(df, {c <- a + b; df;} )
a b
1 1 2
2 2 3
3 3 4
4 4 5
5 5 6

#returns the modified object
within(df, {c <- a + b; df;} )
# equivalent to: within(df, c <- a + b)
# i've just made the return of df explicit 
# for comparison's sake
a b  c
1 1 2  3
2 2 3  5
3 3 4  7
4 4 5  9
5 5 6 11

#par - set or query graphical parameters
#options:
#cin/cra - size of default character (width, height) in different units
    #useful for creating images of the best size
#family / font- name of a font family for drawing text
    #creating visuals with different text - it looks nice
#lab -lable x, y, axis. very useful
#las - numeric // style of axis lables
    #0 - parallel, 1 - horiz, 2 - perp, 3 - vert
#lwd - line width, defaulting to one. makes graphs and additional lines 
    #on them easier to see



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
