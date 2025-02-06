#11. Extract and store as a new object the fourth- and first-row elements, in that order, of the second
#column only of all layers of (10.)

#q10
q10 <- array(seq(4.8, 0.1, length = 48), dim = c(4,2,6))
q10

q11 <- matrix(q10[c(4,1), 2,],2,6, byrow = TRUE)
q11