# 4. Matrix comparison
# Create logical matrix
log_mat <- matrix(rep(c(TRUE, FALSE), 6), nrow = 3)

# Create numeric matrix
num_mat <- matrix(1:12, nrow = 3)

# Element-wise comparison
comparison_result <- log_mat == (num_mat %% 2 == 1)
