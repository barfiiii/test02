# 28. Function to save plots in multiple formats
save_plot_multiple_formats <- function(plot, filename, width=8, height=6) {
  # Save as JPEG
  ggsave(paste0(filename, ".jpg"), plot, width=width, height=height, units="in")
  
  # Save as PDF
  ggsave(paste0(filename, ".pdf"), plot, width=width, height=height, units="in")
  
  # Return message of success
  return(paste("Plot saved as", paste0(filename, ".jpg"), "and", paste0(filename, ".pdf")))
}

# Example usage:
# p <- ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_point()
# save_plot_multiple_formats(p, "my_iris_plot")

