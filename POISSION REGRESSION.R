# POISSION REGRESSION

# Syntax :  glm(formula,data,family) 

# Where,
# formula is the symbol presenting the relationship between the variables.
# data is the data set giving the values of these variables.
# family is R object to specify the details of the model. It's value is 'Poisson' for Poisson Regression.


# example : we need a dataset which gives count as final output , warpbeaks is a kind of dataset 


View(warpbreaks)
?warpbreaks
# break will be dependent vbl , and wool and tension will be independent 

table(warpbreaks$wool)
table(warpbreaks$wool,warpbreaks$breaks)
hist(warpbreaks$breaks)

model <-glm(breaks ~ wool+tension, data = warpbreaks, family = poisson)
model

summary(model)

newdata = data.frame(wool = "B", tension = "H") 

# after executing glm in model , we got two tension col H and M, can be put any one of them

# whenever wool = "B", tension = "H" how many breaks will be there , thats what we predicting

predict(model,newdata, type = "response")

#-----------------------------------------------------------------------------------------------------------------------

a = lm(mpg~hp+wt,data = mtcars)
summary(a)

b = glm(mpg~hp+wt,data = mtcars)
summary(b)

# glm having linking fun 


 



