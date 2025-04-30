# 28. Subset a deeply nested list
deep_list <- list(
  a = 1,
  b = list(
    c = 2,
    d = list(
      e = 3,
      f = 4
    )
  )
)
# Extract the value 4 (f)
deep_value <- deep_list$b$d$f  # Alternative: deep_list[["b"]][["d"]][["f"]]
