# 27. Reorder columns alphabetically
reorder_columns <- function(df) {
  df[, sort(names(df)), drop = FALSE]
}

