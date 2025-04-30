# 1. Install and load ggplot2
install.packages("ggplot2")  # Only needed once
library(ggplot2)

# 2. Create a simple scatter plot with qplot
x <- 1:10
y <- x^2
qplot(x, y)

