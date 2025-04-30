# 23. Create dataframe from vectors of unequal length without recycling
unequal_vectors <- list(
  A = 1:5,
  B = letters[1:3],
  C = LETTERS[1:7]
)
# To avoid recycling, ensure all have same length first
max_length <- max(sapply(unequal_vectors, length))
equal_vectors <- lapply(unequal_vectors, function(x) {
  length(x) <- max_length  # Extends with NAs if needed
  return(x)
})
no_recycle_df <- as.data.frame(equal_vectors)

