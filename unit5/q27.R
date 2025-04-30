# 27. Condition-based shapes and colors
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) +
  geom_point(aes(
    shape=ifelse(Species == "setosa", "Circle", 
                 ifelse(Species == "versicolor", "Triangle", "Square")),
    color=ifelse(Petal.Width > 1.5, "Wide", "Narrow")
  ), size=3) +
  scale_shape_manual(values=c("Circle"=16, "Triangle"=17, "Square"=15), 
                     name="Species Type") +
  scale_color_manual(values=c("Wide"="red", "Narrow"="blue"), 
                     name="Petal Width")

