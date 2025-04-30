# 14. Extract specific factor levels
gender <- factor(c("male", "female", "female", "male", "female"))
females_only <- gender[gender == "female"]