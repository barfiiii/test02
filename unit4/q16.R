# 16. Demonstrate difference between [ ] and [[ ]]
demo_list <- list(a = 1:3, b = "hello")
# Single bracket returns a list
single_bracket <- demo_list[1]  # Returns list with first element
# Double bracket returns the element itself
double_bracket <- demo_list[[1]]  # Returns the vector 1:3

