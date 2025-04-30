# 7. Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22)
)

# 14. Subset dataframe where age > 20
adults <- df[df$Age > 20, ]