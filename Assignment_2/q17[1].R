#17. Sort the first column of the matrix from question (15.) in descending order. Keep other columns
#unchanged

#q15
q15 <- matrix(1:15,5,3)
q15

q17 <- q15
q17[,1] <- sort(q17[,1], decreasing = TRUE)
q17