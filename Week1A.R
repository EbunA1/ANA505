install.packages('caTools')
library(caTools)
library(modelsummary)

#Create dataset
df <- data.frame(years_exp = c(1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7),
                 salary = c(39343, 46205, 37731, 43525, 39891, 56642, 60150, 54445, 64445, 57189))

attach(df)

scatter.smooth(years_exp, salary, main='Years of Experience vs. Salary')

#Fitting SLR to training set
lm.r= lm(formula = salary ~ years_exp, data = df)

#Model summary
modelsummary(lm.r)
