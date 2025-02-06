#6. Overwrite, in this order, the elements of (3.) at positions (4;2), (1;2), (4;1), and (1;1) with -1/2
#of the two values on the diagonal of (e)

#q3
q3 <- q1
q3[,2] <- sort(q3[,2])
q3

diag_vals <- diag(q5)
q6 <- q3
q6[c(4,1,4,1), c(2,2,1,1)] <- -0.5 * diag_vals[c(1,1,2,2)]
q6