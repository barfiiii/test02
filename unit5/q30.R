# 30. Using ifelse() to create and plot a conditional variable
# Create a new variable based on conditions
iris_modified <- iris
iris_modified$size_category <- ifelse(iris$Sepal.Length > 6 & iris$Petal.Length > 5, 
                                      "Large",
                                      ifelse(iris$Sepal.Length < 5 & iris$Petal.Length < 2, 
                                             "Small", 
                                             "Medium"))

# Plot with the conditional variable
ggplot(iris_modified, aes(x=Sepal.Width, y=Petal.Width, color=size_category)) +
  geom_point(size=3) +
  scale_color_manual(values=c("Large"="red", "Medium"="purple", "Small"="blue"),
                     name="Size Category") +
  labs(title="Iris Measurements by Size Category",
       subtitle="Categories defined by Sepal and Petal Length")