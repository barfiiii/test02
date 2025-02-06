#19. From the matrix in question (17.), create a new 2 x 2 matrix using the top four elements of the
#last column

#q17
q17 <- q15
q17[,1] <- sort(q17[,1], decreasing = TRUE)
q17

q19 <- matrix(q17[1:4, 3],2,2)
q19

