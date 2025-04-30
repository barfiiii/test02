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