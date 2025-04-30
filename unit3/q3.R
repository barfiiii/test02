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