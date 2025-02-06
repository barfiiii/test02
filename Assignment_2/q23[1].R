#23. For
#confirm that B-1 - B – I3 provides a 3 x 3 matrix of zeros.

q23 <- diag(c(1,2,-2))
result23 <- solve(q23) - q23 - diag(3)
result23