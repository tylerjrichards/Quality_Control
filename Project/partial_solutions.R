#reading data into R
Data_table <- read.csv("~/Documents/Spring18/Quality_Control/Project/Data table.csv", colClasses = c("factor", "factor", "numeric"))

#anova calculation
anova(lm(Value ~ . + .*., data = Data_table))
 
#six sigma
6 * sd(Data_table$Value)


#regression
regression_data <- read.csv("~/Documents/Spring18/Quality_Control/Project/regression_data.csv", colClasses = c("factor", "numeric", "numeric", "numeric", "numeric"))

model <- lm(Totals ~ A + B + C + A*B + A*C + B*C + A*B*C, data = regression_data)
model$effects
anova(model)
