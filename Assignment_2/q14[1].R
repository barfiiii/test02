#14. Overwrite the second and fourth row elements of the second column of layers 1, 3, and 5 of
#(13.) with -99

#q13
q13 <- q10[,,-6]
q13

q14 <- q13
q14[c(2,4), 2, c(1,3,5)] <- -99
q14