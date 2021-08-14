# Linear Regression 

height<- c(151,174,138,186,128,136,179,163,152,131) # independent vbl 
weight<-c(63,81,56,91,47,57,76,72,62,48) #dependent vbl

?lm

rel<- lm(weight~height)
rel

# linear model eq from ouput of rel  : y = ax + b , here a = 0.6746   , b = -38.4551  from above rel 

summary(rel) # detailed description of lm model 

# Residuals will give the value of  ( observed minus  predicted )

# Multiple R-squared: 0.9548, => this is line is most important

# multiple R-squared and adjusted R- squared = explain  variation  of model divided by  total variation of model ,always lies from 0-1

# Adjusted R-squared: 0.9491  =  its says your  model is good fit or not 
# Adjusted R-squared almost equal to 1 then good fit model 
# Adjusted R-squared almost equal to 0 then bad fit model

# Multiple R-squared always increases when you add more number of variables 

# Adjusted R-squared will comare this value only  becoz  it increase only when particular error reduction decreases and if its decreases then it is bad fit  

# F statistics  :-  based on F test , based on two variance , to find  the relation dependent and independent vbl , cnat be negative value 
 

z <- data.frame(height=190) # ht value can be any thing apart from given set of values also 

result=predict(rel,z)
result

# y = ax+b
y=(0.6746*190)+-38.4551
y


#---------------------------------------------------------------------------------------------------------
 
?faithful

View(faithful)

rowi= sample(1:nrow(faithful),0.8*nrow(faithful)) #taking sample , value from 1 to total no. of rows , 0.8 means 80 %
rowi

nrow(faithful) # total no. of rows 
0.8*nrow(faithful) # 80 % of total rows 

traind<- faithful[rowi,] # training data, 80 % data
testd<- faithful[-rowi,] # test data , 20 % data 

rel1 <- lm(eruptions~waiting, data = traind )  # eruption dependent vbl , waiting independent vbl , basedd on 217 rows 
rel1

summary(rel1)

final_testd<-data.frame(testd) # in predic fun , data.frame is only acceptable 
final_testd

result<- predict(rel1,final_testd) # rel1 is traind model , final_testd is waiting col 
result

 
