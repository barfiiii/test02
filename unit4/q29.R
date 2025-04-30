# 29. Add factor column from numeric column
add_factor_from_numeric <- function(df, numeric_col, new_col_name) {
  # Create breaks for categories (using quantiles for example)
  breaks <- quantile(df[[numeric_col]], probs = c(0, 0.33, 0.66, 1))
  
  # Create factor
  df[[new_col_name]] <- cut(df[[numeric_col]], 
                            breaks = breaks,
                            labels = c("Low", "Medium", "High"),
                            include.lowest = TRUE)
  return(df)
}

