#9. For
#confirm that A-1 - A - I4 provides a 4 x 4 matrix of zeros.

q9 <- diag(c(2,3,5,-1))
result9 <- solve(q9) - q9 - diag(4)
result9