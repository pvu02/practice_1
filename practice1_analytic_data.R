library(tidyverse)
raw_data <- read_csv(file="practice_assignment_1_data.csv",na=c("-999"))
categorical_variables$sex <- as.factor(categorical_variables$sex)
levels(categorical_variables$sex) <- list("Male"=1,"Female"=2)
categorical_variables$major <- as.factor(categorical_variables$major)
levels(categorical_variables$major) <- list("Psychology"=1,"Sociology"=2,"Math"=3,"Engineering"=4,"Science"=5)
categorical_variables$age <- as.factor(categorical_variables$age)
self_esteem_items <- select (raw_data, SE1, SE2, SE3, SE4, SE5)
depression_items <- select (raw_data, D1, D2, D3, D4, D5)
job_satisfaction_items <- select (raw_data, JS1, JS2, JS3, JS4, JS5)
is_bad_value <- self_esteem_items<1 | self_esteem_items>7
self_esteem_items[is_bad_value] <- NA
is_bad_value <- depression_items<1 | depression_items>4
depression_items[is_bad_value] <- NA