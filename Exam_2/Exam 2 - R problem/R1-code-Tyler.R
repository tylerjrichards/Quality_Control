# solution to Exam 2 - R problem 1

#Solution 1

# read data
Problem_1 <- read.csv("R_problem1.csv")

# data preprocessing, remove the first column

#this can be done by using either
Problem_1 <- Problem_1[,-c(1)]
#or
Problem_1 <- Problem_1[,c(2:ncol(Problem_1))]


# install the R package for quality control charts if not installed already
install.packages("qcc")

# load package
library(qcc)

# establish xbar and R charts
qcc(Problem_1, type = "xbar")
# from the xbar chart we observe that the sample 19 is out of control
# we remove the sample 19 and establish the control chart one more time
Problem_1_edited <- Problem_1[-c(19), ]
qcc(Problem_1_edited, type = "xbar")
qcc(Problem_1, type = "R")
# there is no outlier and the control charts are well established


#Solution 2

# read data
Problem_1 <- read.csv("R_problem1.csv")

# load library
library(qcc)

#make xbar and R charts
qcc(Problem_1[,-c(1)], type = "xbar")
qcc(Problem_1[,-c(1)], type = "R")

#remove row 19 for xbar
qcc(Problem_1[-c(19), -c(1)], type = "xbar")
