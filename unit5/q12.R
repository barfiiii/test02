# 11. Create scatter plot with color by category
# Using the iris dataset as an example
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
  geom_point() +
  labs(title="Iris Dataset: Sepal Length vs Petal Length")

# 12. Save plot as PDF
# Create a plot first
p <- ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
  geom_point()

# Save as PDF
ggsave("my_plot.pdf", p, width=8, height=6, units="in")

