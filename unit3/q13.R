# 13. Create ordered factor for months
months_vec <- c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov")
months_ordered <- factor(months_vec, 
                         levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", 
                                    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
                         ordered = TRUE)
