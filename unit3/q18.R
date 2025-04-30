# 18. Replace values less than mean with NA
replace_below_mean <- function(num_vec) {
  mean_val <- mean(num_vec)
  result <- num_vec
  result[result < mean_val] <- NA
  return(result)
}