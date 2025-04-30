# 25. Dynamically add named elements to list
add_to_list <- function(existing_list, element_name, element_value) {
  existing_list[[element_name]] <- element_value
  return(existing_list)
}
# Example usage:
my_list <- list(a = 1)
# In practice, user input would come from readline() or similar
my_list <- add_to_list(my_list, "user_element", 42)
