# 7. Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22)
)

# 13. Convert character column to factor
df$Name <- as.factor(df$Name)

