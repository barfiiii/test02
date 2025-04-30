# 24. Handle missing values when reading data
# Example with na.strings parameter
df_with_na <- read.csv("data_with_missing.csv", 
                       na.strings=c("NA", "", "missing", "Unknown"))

# If you don't have a file with missing values, here's an example:
df_example <- data.frame(
  x = c(1, 2, 3, NA, 5),
  y = c("a", "", "c", "Unknown", "e")
)
write.csv(df_example, "data_with_missing.csv", row.names=FALSE)
df_with_na <- read.csv("data_with_missing.csv", 
                       na.strings=c("NA", "", "Unknown"))

