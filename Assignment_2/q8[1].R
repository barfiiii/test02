#8. Store these two matrices:

q8_1 <- matrix(c(1,2,7),3,1)
q8_2 <- matrix(c(3,4,8),3,1)
q8_1
q8_2

# i. A . B 
result8_i <- t(q8_1) %*% q8_2
result8_i

# ii. A^T . B
result8_ii <- q8_1 %*% t(q8_2)
result8_ii

# iii. B^T . (A . A^T)
result8_iii <- t(q8_2) %*% (q8_1 %*% t(q8_1))
result8_iii

# iv. (A . A^T) . B^T
result8_iv <- (q8_1 %*% t(q8_1)) %*% t(q8_2)
result8_iv

# v. [(B . B^T) + (A . A^T) - 100I_3]^(-1)
I3 <- diag(3)
result8_v <- solve((q8_2 %*% t(q8_2)) + (q8_1 %*% t(q8_1)) - 100 * I3)
result8_v