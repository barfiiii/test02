#18. What would the result be if you remove the second row and the third column from the sorted
#matrix in question (17.)? Ensure the result remains a matrix

#q17
q17 <- q15
q17[,1] <- sort(q17[,1], decreasing = TRUE)
q17

#q18
q18 <- matrix(q17[-2, -3], 4, 2)
q18
