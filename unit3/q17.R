# 17. Logical operations on vectors
logic_vec1 <- c(TRUE, FALSE, TRUE, FALSE)
logic_vec2 <- c(FALSE, FALSE, TRUE, TRUE)

# Element-wise operations
and_result <- logic_vec1 & logic_vec2
or_result <- logic_vec1 | logic_vec2
not_result1 <- !logic_vec1
not_result2 <- !logic_vec2