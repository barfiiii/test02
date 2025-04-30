# 6. Modify size and shape of points with geom_point
ggplot(data.frame(x=x, y=y), aes(x=x, y=y)) + 
  geom_point(size=3, shape=17, color="blue") +
  # Shape 17 is a filled triangle
  labs(title="Points with Custom Size and Shape")

# 7. List files in current working directory
list.files()

