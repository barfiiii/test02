# 7. Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22)
)

# 10. Add a new row to data frame
new_df <- rbind(df, data.frame(Name = "David", Age = 28))