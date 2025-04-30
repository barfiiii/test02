# 7. Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22)
)

# 15. Add column for age in months
df$AgeMonths <- df$Age * 12