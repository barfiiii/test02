#16. If you add a new row to the matrix created in question (15.), confirm its new dimensions

#q15
q15 <- matrix(1:15,5,3)
q15

q16 <- rbind(q15, c(16,17,18))
q16
dim(q16)
