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

# 13. Add reference lines to a plot
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) +
  geom_point() +
  geom_hline(yintercept=3.5, linetype="dashed", color="red") +
  geom_vline(xintercept=5.5, linetype="dotted", color="blue")

