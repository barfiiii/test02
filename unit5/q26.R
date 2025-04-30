# 26. Complex visualization with multiple geoms and theme
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
  geom_point(size=3, alpha=0.7) +
  geom_smooth(method="lm", se=TRUE, alpha=0.2) +
  geom_density_2d(alpha=0.5) +
  facet_wrap(~Species) +
  labs(title="Complex Iris Visualization",
       subtitle="Showing points, regression lines, and density contours",
       x="Sepal Length (cm)",
       y="Petal Length (cm)") +
  theme_minimal() +
  theme(
    plot.title = element_text(size=16, face="bold"),
    plot.subtitle = element_text(size=12, color="gray50"),
    axis.title = element_text(face="italic"),
    legend.position = "bottom",
    panel.grid.minor = element_blank(),
    strip.background = element_rect(fill="lightblue", color=NA),
    strip.text = element_text(face="bold")
  )

