#3. Overwrite the second column of the matrix from (1.) with that same column sorted from smallest
#to largest.
#q1
q1<-matrix(c(4.3, 3.1, 8.2, 8.2, 3.2,0.9, 1.6,6.5),4,2,byrow = TRUE)
q1

q3 <- q1
q3[,2] <- sort(q3[,2])
q3