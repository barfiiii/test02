# 7. Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22)
)

# 8. Access age of second person
second_person_age <- df$Age[2]  # Alternative: df[2, "Age"]
