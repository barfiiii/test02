# 4. Create a line plot using ggplot and geom_line
ggplot(data.frame(x=x, y=y), aes(x=x, y=y)) + 
  geom_line()
