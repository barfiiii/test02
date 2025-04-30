# 1. Create alternating logical vector
logical_vec <- rep(c(TRUE, FALSE), 6)

# 2. Check for negative elements
check_negative <- function(num_vec) {
  return(num_vec < 0)
}
# Example usage:
# test_vec <- c(5, -3, 7, -1, 0, 8)
# check_negative(test_vec)  # Returns: FALSE TRUE FALSE TRUE FALSE FALSE

# 3. Compare vectors and find different indices
compare_vectors <- function(vec1, vec2) {
  # Check if vectors are equal length
  if(length(vec1) != length(vec2)) {
    stop("Vectors must be of equal length")
  }
  
  # Check element-wise equality
  are_equal <- vec1 == vec2
  
  # Find indices where they differ
  diff_indices <- which(!are_equal)
  
  return(list(all_equal = all(are_equal), different_indices = diff_indices))
}
# Example:
# vec1 <- c(1, 2, 3, 4, 5)
# vec2 <- c(1, 7, 3, 9, 5)
# compare_vectors(vec1, vec2)  # Different at indices 2 and 4

# 4. Matrix comparison
# Create logical matrix
log_mat <- matrix(rep(c(TRUE, FALSE), 6), nrow = 3)

# Create numeric matrix
num_mat <- matrix(1:12, nrow = 3)

# Element-wise comparison
comparison_result <- log_mat == (num_mat %% 2 == 1)

# 5. Vector recycling demonstration
vec_short <- c(1, 2, 3, 4)
vec_long <- 1:10
recycled_sum <- vec_short + vec_long
# This will recycle vec_short to match vec_long's length

# 6. Sum of TRUE values
sum_true <- function(log_vec) {
  return(sum(log_vec))
}
# Example:
# bool_vec <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
# sum_true(bool_vec)  # Returns 3

# 7. Extract values greater than 10
extract_gt_10 <- function(num_vec) {
  return(num_vec[num_vec > 10])
}
# Example:
# numbers <- c(5, 15, 3, 20, 8, 12)
# extract_gt_10(numbers)  # Returns: 15 20 12

# 8. String operations - count characters and extract substring
text <- "Hello World! Welcome to R programming"
char_count <- nchar(text)
r_prog_substring <- substr(text, nchar(text) - 12 + 1, nchar(text))
# Alternative using regular expressions:
# r_prog_substring <- regmatches(text, regexpr("R programming", text))

# 9. Concatenate with hyphen separator
concatenated <- paste("Data", "Science", "R", sep = "-")

# 10. Difference between cat() and paste()
words <- c("Hello", "from", "R", "programming")
# paste() returns a character vector
paste_result <- paste(words, collapse = " | ")
# cat() prints directly to console with no return value
# cat(words, sep = " | ")  # Uncomment to see output

# 11. Replace string occurrences
apple_string <- "apple, apple, and apple"
first_replaced <- sub("apple", "orange", apple_string)
all_replaced <- gsub("apple", "orange", apple_string)

# 12. Convert to factor
gender_vec <- c("male", "female", "male", "female")
gender_factor <- factor(gender_vec)
# View factor and levels
# gender_factor
# levels(gender_factor)

# 13. Create ordered factor for months
months_vec <- c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov")
months_ordered <- factor(months_vec, 
                         levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", 
                                    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
                         ordered = TRUE)

# 14. Extract specific factor levels
gender <- factor(c("male", "female", "female", "male", "female"))
females_only <- gender[gender == "female"]

# 15. Bin numeric data into categories
bin_data <- function(numeric_vec) {
  # Define breaks for low, medium, high
  min_val <- min(numeric_vec)
  max_val <- max(numeric_vec)
  breaks <- c(min_val - 0.1, min_val + (max_val - min_val)/3, 
              min_val + 2*(max_val - min_val)/3, max_val + 0.1)
  
  # Create factor with labels
  binned <- cut(numeric_vec, breaks = breaks, 
                labels = c("Low", "Medium", "High"), 
                include.lowest = TRUE)
  
  return(binned)
}
# Example:
# test_nums <- c(1, 5, 10, 15, 20, 25, 30)
# bin_data(test_nums)

# 16. Demonstrate any() and all() functions
logical_mix <- c(TRUE, FALSE, TRUE, FALSE)
any_result <- any(logical_mix)  # TRUE because at least one element is TRUE
all_result <- all(logical_mix)  # FALSE because not all elements are TRUE

# Comment: In a scenario where we're checking if any student scored above 90% 
# but not all students did, any() would return TRUE but all() would return FALSE.

# 17. Logical operations on vectors
logic_vec1 <- c(TRUE, FALSE, TRUE, FALSE)
logic_vec2 <- c(FALSE, FALSE, TRUE, TRUE)

# Element-wise operations
and_result <- logic_vec1 & logic_vec2
or_result <- logic_vec1 | logic_vec2
not_result1 <- !logic_vec1
not_result2 <- !logic_vec2

# 18. Replace values less than mean with NA
replace_below_mean <- function(num_vec) {
  mean_val <- mean(num_vec)
  result <- num_vec
  result[result < mean_val] <- NA
  return(result)
}
# Example:
# test_vals <- c(10, 20, 30, 40, 50)
# replace_below_mean(test_vals)  # Values below 30 become NA

# 19. Compare strings alphabetically
string1 <- "apple"
string2 <- "Apple"
string3 <- "banana"

# Comparisons
comp1 <- string1 > string2  # TRUE - lowercase 'a' comes after uppercase 'A' in ASCII
comp2 <- string1 < string3  # TRUE - 'a' comes before 'b' alphabetically
comp3 <- tolower(string2) == tolower(string1)  # TRUE - case-insensitive comparison

# Comment: R compares strings based on their ASCII/Unicode values.
# Uppercase letters (A-Z) have ASCII values 65-90, while lowercase (a-z) have 97-122.
# This means uppercase letters come before lowercase in comparisons.

# 20. Using escape sequences in strings
escaped_string <- "This has a newline:\nThis has a tab:\tThis has a backslash:\\"
# cat(escaped_string)  # Uncomment to see output