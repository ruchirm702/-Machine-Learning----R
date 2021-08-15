# Multiple Linear Regression 

# --> extension of linear regression into relationship between more than two variables. 
# --> we have more than one predictor(independent) variable and one response(dependent) variable.

# y = a + b1x1 + b2x2 +...bnxn

# Where,
# y is the response variable.
# a, b1, b2...bn are the coefficients.
# x1, x2, ...xn are the predictor variables.


View(mtcars)
? mtcars

model<-lm(mpg~disp+hp+wt,data =mtcars) # mpd - dependent , disp,wt,hp - indpendent 
model
 
summary(model) 

plot(mtcars$disp,mtcars$mpg) # x axis having independent , y axis will have dependent vbl only 
#to see linear rellation ,a draw straight line 
abline(lm(mpg~disp,data = mtcars)) # to draw a straight line 


plot(mtcars$hp,mtcars$mpg)
abline(lm(mpg~hp,data = mtcars))

plot(mtcars$wt,mtcars$mpg)
abline(lm(mpg~wt,data = mtcars))

# negatively related , right bottom to left upper 

z<- data.frame(disp=221,hp=102,wt=2.92)
z

ress=predict(model,z)
ress


#y=a+(b1*x1)+(b2 *x2)+(b3*x3)

a =coef(model) # all coef will be shown 

a =coef(model)[1]   # to calc intercept value , [1] to display intercept value in 
a

 b1=coef(model)[2]
b1

b2=coef(model)[3]
b2

b3=coef(model)[4]
b3


x1=221  # disp=221
x2=102  # hp=102
x3=2.92 # wt=2.92

y=a+(b1*x1)+(b2 *x2)+(b3*x3) # equivalent to ress above  
y


#-----------------------------------------------------------------------------------------------------





