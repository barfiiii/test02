# 26. Function to return only numeric columns
get_numeric_cols <- function(df) {
  numeric_cols <- sapply(df, is.numeric)
  return(df[, numeric_cols, drop = FALSE])
}

