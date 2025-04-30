# 19. Different line types and widths
# Create sample data
time_data <- data.frame(
  time = 1:20,
  value1 = cumsum(rnorm(20)),
  value2 = cumsum(rnorm(20, mean=0.5)),
  value3 = cumsum(rnorm(20, mean=-0.5))
)

# Plot with different line types and widths
ggplot(time_data) +
  geom_line(aes(x=time, y=value1), linetype="solid", size=1) +
  geom_line(aes(x=time, y=value2), linetype="dashed", size=1.5) +
  geom_line(aes(x=time, y=value3), linetype="dotted", size=0.8)
