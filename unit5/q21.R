# 21. Function to read and plot user-selected file
plot_user_file <- function() {
  # Open file dialog for user selection
  file_path <- file.choose()
  
  # Check if file was selected
  if(is.null(file_path)) {
    return("No file selected")
  }
  
  # Try to read the file (assuming CSV format)
  tryCatch({
    data <- read.csv(file_path)
    
    # Get first two numeric columns for plotting
    num_cols <- sapply(data, is.numeric)
    if(sum(num_cols) < 2) {
      return("Need at least 2 numeric columns")
    }
    
    # Select first two numeric columns
    x_col <- names(data)[num_cols][1]
    y_col <- names(data)[num_cols][2]
    
    # Create plot
    p <- ggplot(data, aes_string(x=x_col, y=y_col)) +
      geom_point() +
      labs(title=paste("Plot of", x_col, "vs", y_col),
           subtitle=paste("From file:", basename(file_path)))
    
    print(p)
    return(p)
    
  }, error = function(e) {
    return(paste("Error reading file:", e$message))
  })
}

