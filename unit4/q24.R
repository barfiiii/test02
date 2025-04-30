# 24. Create list with matrix, logical vector, and string
complex_list <- list(
  mat = matrix(1:6, nrow = 2),
  logic = c(TRUE, FALSE, TRUE),
  text = "R programming"
)
# Extract second element of logical vector
second_logical <- complex_list$logic[2]

