# solution to Exam 2 - R problem 2
# read data
dat1 = read.csv("R_problem2.csv")

# data preprocessing
dat2 = dat1[,-1]

# install the R package for quality control charts
install.packages("qcc")
library(qcc)

# establish p and np charts
qcc(dat2$total.number.of.defective.cells, sizes = dat2$sample.size, type = "p")
# from the xbar chart we observe that the sample 9, 11, 17,19 and 28 is out of control
# we remove those samples and establish the control chart one more time
dat3 = dat2[-c(9, 11, 17,19, 28), ]
qcc(dat3$total.number.of.defective.cells, sizes = dat3$sample.size, type = "p")
qcc(dat3$total.number.of.defective.cells, sizes = dat3$sample.size, type = "np")
# there is no outlier and the control charts are well established

# the u chart
qcc(dat3$total.number.of.defective.cells, sizes = dat3$sample.size, type = "u")

