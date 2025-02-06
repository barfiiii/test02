#20. Replace the elements at positions (2,1), (2,3), (5,1), and (5,3) in the matrix from question (17.)
#with the average of the four corner elements of that matrix

#q17
q17 <- q15
q17[,1] <- sort(q17[,1], decreasing = TRUE)
q17

q20_1 <- mean(c(q17[1,1], q17[1,3], q17[5,1], q17[5,3]))
q20_2 <- q17
q20_2[c(2,2,5,5), c(1,3,1,3)] <- q20_1
q20_2