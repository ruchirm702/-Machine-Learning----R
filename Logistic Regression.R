# LOGISTIC REGRESSION

# --> instance of classification technique that you can use to predict a qualitative response. 

# -->  used when dealing with catagorical values   b

# y = 1/(1+e^-(a+b1x1+b2x2+b3x3+...))

# Where,
# y is the response variable.
# x is the predictor variable.
# a and b are the coefficients which are numeric constants.

# The function used to create the regression model is the glm() function.


# -->  Syntax :           glm(formula,data,family)

# Where,
# formula is the symbol presenting the relationship between the variables.
# data is the data set giving the values of these variables.
# family is R object to specify the details of the model. It's value is binomial for logistic regression.


View(mtcars)

logi<-glm(am~hp+cyl+wt,data = mtcars , family = 'binomial')
logi

# assuming .60 threshold value 
a = data.frame(hp=100,cyl=3,wt=2.5)
s=predict(logi,a,type='response')
s
  
?glm

summary(logi)

