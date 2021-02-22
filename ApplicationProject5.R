#Application-Project5 - Joana Mucogllava
#Problem 1 
#(a) Find the sample space for this experiment in R
#We will need this library for the combination and permutation
library("gtools") 
#Library to use fractions
library("MASS")
#Next library includes convenient functions for statistical
#computations, you can install it with install.packages("sjstats")
library("sjstats")

#From 10 movies, we choose 3 movies from that list, in no particular order.

#obtain the sample space S
S=as.data.frame(combinations(10,3))
S

#(b) Let X be the number of movies from the 1970's chosen by a random member. Find the PMF of X.
X=(S$V1<=4)+(S$V2<=4)+ (S$V3<=4)
X

#Find the PMF of X
pmfX = fractions(table(X)/nrow(S))
pmfX

#(c) Find the expected value of X.
meanX=weighted.mean(X)
meanX

#(d) Find Var(X) and ??X.
varX = var_pop(X)
varX

#Division
dev_X = sqrt(varX)
dev_X

#Problem 2 
#X = number of pieces completed by their deadlines
#x 0 1 2 3 4 5
#p(x) 0.05 0.1 0.15 0.25 0.35 0.1
#(a) Compute the expected value and variance of X.

x=0:5
prob.x=c(0.05, 0.1, 0.15, 0.25, 0.35, 0.1)

#Expected value of x
mean.x=weighted.mean(x, prob.x)
mean.x
#Variance of x
var.x=weighted.mean(x^2,prob.x)-(mean.x)^2
var.x

#Y = remaining production budget for the company
#Starting budget = $20,000 
#Each piece completed reduces the budget by $1,000
#(b)Find the expected value and variance of Y .
#Expected value of Y
Y = 20000 - (1000*x) #linear transformation (x is the number of completed pieces)
mean.Y=weighted.mean(Y, prob.x)
mean.Y
#Variance of Y
var.Y=weighted.mean(Y^2,prob.x)-(mean.Y)^2
var.Y

#Bonus of $15,000 for each piece completed-c
#(c)Find the expected value and variance of the total bonus amount.
#Expected value of c(completed)
c = (15000*x)
mean.c=weighted.mean(c, prob.x)
mean.c
#Variance of c
var.c=weighted.mean(c^2,prob.x)-(mean.c)^2
var.c

