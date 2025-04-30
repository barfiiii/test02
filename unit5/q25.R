# 25. Categorize points based on two numeric conditions
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) +
  geom_point(aes(color=interaction(Sepal.Length > 5.5, Petal.Length > 4.5)),
             size=3) +
  scale_color_manual(
    values=c("FALSE.FALSE"="blue", "FALSE.TRUE"="green", 
             "TRUE.FALSE"="orange", "TRUE.TRUE"="red"),
    labels=c("FALSE.FALSE"="Small Sepal & Petal", 
             "FALSE.TRUE"="Small Sepal, Large Petal",
             "TRUE.FALSE"="Large Sepal, Small Petal", 
             "TRUE.TRUE"="Large Sepal & Petal"),
    name="Size Categories"
  )

