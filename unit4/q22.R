# 22. Create dataframe with recycling
recycled_df <- data.frame(
  A = 1:5,
  B = c("x", "y")  # Will be recycled to match length of A
)
# This demonstrates R's recycling behavior where shorter vectors
# are repeated to match the length of the longest vector
