# 21. Merge two lists into one nested list
merge_lists <- function(list1, list2) {
  return(list(first_list = list1, second_list = list2))
}
# Example usage:
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)
merged <- merge_lists(list1, list2)

