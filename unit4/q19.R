# 19. Exclude a particular column
df_no_age <- df[, !colnames(df) %in% c("Age")]

