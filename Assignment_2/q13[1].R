#13. Create a new array comprised of the results of deleting the sixth layer of (10.).

#q10
q10 <- array(seq(4.8, 0.1, length = 48), dim = c(4,2,6))
q10

q13 <- q10[,,-6]
q13