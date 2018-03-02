# solution to Exam 2 - R problem 1
# read data
dat1 = read.csv("R_problem1.csv")

# data preprocessing, remove the first column
dat2 = dat1[,-1]

# install the R package for quality control charts
require(qcc)
install.packages("qcc")
library(qcc)

# establish xbar and R charts
qcc(dat2, type = "xbar")
# from the xbar chart we observe that the sample 19 is out of control
# we remove the sample 19 and establish the control chart one more time
dat3 = dat2[-19, ]
qcc(dat3, type = "xbar")
qcc(dat2, type = "R")
# there is no outlier and the control charts are well established
