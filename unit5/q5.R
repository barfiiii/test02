# 1. Install and load ggplot2
install.packages("ggplot2")  # Only needed once
library(ggplot2)

# 4. Create a line plot using ggplot and geom_line
ggplot(data.frame(x=x, y=y), aes(x=x, y=y)) + 
  geom_line()

# 5. Add titles and axis labels
ggplot(data.frame(x=x, y=y), aes(x=x, y=y)) + 
  geom_line() +
  labs(title="My Line Plot",
       subtitle="A simple example of ggplot2",
       x="X-Axis Label",
       y="Y-Axis Label",
       caption="Created with ggplot2")