# 29. Custom plot theme
custom_scientific_theme <- function() {
  theme_minimal() +
    theme(
      # Text elements
      plot.title = element_text(size=16, face="bold", hjust=0.5),
      plot.subtitle = element_text(size=12, color="gray50", hjust=0.5),
      axis.title = element_text(face="bold", size=10),
      axis.text = element_text(size=9),
      
      # Grid elements
      panel.grid.major = element_line(color="gray80", size=0.2),
      panel.grid.minor = element_line(color="gray90", size=0.1),
      
      # Background
      panel.background = element_rect(fill="gray97", color=NA),
      plot.background = element_rect(fill="white", color=NA),
      
      # Legend
      legend.background = element_rect(fill="gray97", color="gray80"),
      legend.key = element_rect(fill="gray97", color=NA),
      legend.title = element_text(face="bold", size=10),
      legend.text = element_text(size=9),
      legend.position = "right"
    )
}

# Example usage:
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
  geom_point() +
  labs(title="Iris Dataset with Custom Theme") +
  custom_scientific_theme()

