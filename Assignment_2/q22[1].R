#22. Store these two matrices:
#which of the following multiplications are valid? For valid cases, compute the results.
#i. C . D
#ii. CT . D
#iii. DT . (C . CT)

q22_1 <- matrix(c(1,3,2,4),2,2)
q22_2 <- matrix(c(5,6),2,1)
q22_1
q22_2

# i
result22_i <- t(q22_1) %*% q22_2
result22_i

# ii
q22_1
t(q22_2)
result22_ii <- q22_1 %*% t(q22_2)
result22_ii

# iii
result22_iii <- t(q22_2) %*% (q22_1 %*% t(q22_1))
result22_iii
