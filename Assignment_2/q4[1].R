#4. What does R return if you delete the fourth row and the first column from (3.)? Use matrix to
#ensure the result is a single-column matrix, rather than a vector
#q3
q3 <- q1
q3[,2] <- sort(q3[,2])
q3

q4 <- matrix(q3[-4,2], ncol = 1)
q4