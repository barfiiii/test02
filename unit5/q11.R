# 11. Create scatter plot with color by category
# Using the iris dataset as an example
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
  geom_point() +
  labs(title="Iris Dataset: Sepal Length vs Petal Length")

