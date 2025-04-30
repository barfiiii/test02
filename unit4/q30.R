# 30. Subset dataframe with multiple conditions
# Let's create a more complex dataframe first
complex_df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Emma"),
  Age = c(25, 30, 22, 45, 28),
  Salary = c(50000, 60000, 45000, 80000, 55000),
  Department = c("HR", "IT", "IT", "Finance", "HR")
)

# Subset with multiple conditions
filtered_df <- complex_df[complex_df$Age > 25 & 
                            complex_df$Department == "IT" | 
                            complex_df$Salary > 70000, ]