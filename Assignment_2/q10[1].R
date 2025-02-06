#10. Create and store a three-dimensional array with six layers of a 4 x 2 matrix, filled with a
#decreasing sequence of values between 4.8 and 0.1 of the appropriate length.

q10 <- array(seq(4.8, 0.1, length = 48), dim = c(4,2,6))
q10