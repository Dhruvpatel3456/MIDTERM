# upload the dataset

data = read.csv("diabetes.csv")
install.packages("dplyr")
library(dplyr)

install.packages("explore")
library(explore)
# Exploratory data analysis

explore_tbl(data)
describe(data)
explore_all(data)
explore_tbl(data)
data %>%
  select(Glucose,Pregnancies,BloodPressure,SkinThickness,Insulin,BMI,Age,DiabetesPedigreeFunction) %>%
  explore_all(target = Age)
attach(data)
plot(SkinThickness,DiabetesPedigreeFunction,
     main="Basic Scatter plot of Age vs. DiabetesPedigreeFunction",
     xlab=" DiabetesPedigreeFunction",
     ylab="Age")
abline(lm(Age~DiabetesPedigreeFunction), col="red", lwd=2, lty=1)
lines(lowess(DiabetesPedigreeFunction~Age), col="brown", lwd=2, lty=2)


      
            