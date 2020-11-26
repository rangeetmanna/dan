library("tidyverse")#to load the install package
?mpg
mpg# fuel economy data
view(mpg) #to view in chart
data <- mpg
mean(data$cty)#1)
max(data$cyl) #2)
range(data$hwy) #3)
d <- data[2:20,8]  #4)
d
mean(d$cty) 
mean(data$cty[data$year=="2008"]) #5)
