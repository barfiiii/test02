#24. Construct a three-dimensional array with four layers, each a 3 x 3 matrix filled with random
#numbers between 1 and 9. Then, extract the elements of the first row of the third column across all
#layers and store them as a new vector

q24 <- array(sample(1:9, 36, replace = TRUE), dim = c(3,3,4))
result24 <- q24[1,3,]
result24