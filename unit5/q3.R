# 3. Save plot as JPEG
# First create a plot
plot(x, y, main="Simple Scatter Plot")
# Save it as JPEG
jpeg("my_plot.jpg", width=800, height=600)
plot(x, y, main="Simple Scatter Plot")
dev.off()
