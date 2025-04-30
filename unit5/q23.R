# 23. Customized legend with manual scales
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, 
                 color=Species, shape=Species)) +
  geom_point(size=3) +
  scale_color_manual(values=c("setosa"="forestgreen", 
                              "versicolor"="purple", 
                              "virginica"="orange")) +
  scale_shape_manual(values=c("setosa"=16, "versicolor"=17, "virginica"=18)) +
  guides(color = guide_legend(title="Iris Type", 
                              override.aes=list(size=5)),
         shape = guide_legend(title="Species Shape"))

