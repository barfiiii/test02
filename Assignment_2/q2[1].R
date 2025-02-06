#2. Confirm the dimensions of the matrix from (1.) are 3 x 2 if you remove any one row
#q1
q1<-matrix(c(4.3, 3.1, 8.2, 8.2, 3.2,0.9, 1.6,6.5),4,2,byrow = TRUE)
q1

#q2
dim(q1)
q2<-q1[-1,]
dim(q2)
