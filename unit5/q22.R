# 22. Combined usage of multiple geoms
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
  geom_point(size=3, alpha=0.7) +
  geom_line(aes(group=Species)) +
  geom_hline(yintercept=mean(iris$Petal.Length), linetype="dashed", color="black") +
  labs(title="Combined Geoms Example")