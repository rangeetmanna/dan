library(tidyverse)
ggplot(data=mpg)+ geom_point(mapping=aes(x=displ, y=hwy))
print(mpg)
ggplot(data=mpg)+ geom_point(mapping=aes(x=displ, y=hwy, color=class))
view(mpg)
mpg %>% ggplot(aes(x = displ, y = hwy))+
  geom_point() +
  geom_point(aes(y = cty), colour = "red") +
  ylab("hwy and cty")
ggplot(data=mpg)+
  geom_pont(mapping=aes(x=hwy, y=cty, size=displ), color="blue")

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(x=displ, y=cty, colour="red"))

ggplot(data=mpg)+
  geom_smooth(mapping=aes(x=displ, y=hwd)) 

boxplot(mpg$hwy)
ggplot(data=mpg)+
  geom_boxplot(mapping=aes(x=class, y=hwy))
library(ggplot2)
install.packages("devtools")
library(devtools)
install_github("https://github.com/rangeetmanna/dan.git")
devtools::install_github("rangeetmanna/dan")
ggplot(data=mpg)+
  geom_point(mapping=aes(x=hwy, y=cty, size=displ),
             color="blue")+
  xlim(5,40)+
  ylim(5,40)
my_file <- "C:/Users/Rangeet Manna/Downloads/tmaze.csv"
df <- read_csv(my_file)
df
s=filter(df, block %in% c(1,2,3))
view(s)
