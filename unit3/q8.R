# 8. String operations - count characters and extract substring
text <- "Hello World! Welcome to R programming"
char_count <- nchar(text)
r_prog_substring <- substr(text, nchar(text) - 12 + 1, nchar(text))