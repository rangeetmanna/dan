library(tidyverse)
my_file <- "C:/Users/Rangeet Manna/Downloads/tmaze.csv"
df <- read_csv(my_file)
df
s=filter(df, block %in% c(1,2,3))
view(s)
df <- mutate(df,correct=sample!=choice)
df
summarize(df, performance=mean(correct))
by_df <- group_by(df, mouse)
summarize(by_df,performance=mean(correct))


  
  
df %>% group_by(mouse,block) %>%  
  summarise(performance = mean(correct)) %>%  
  group_by(block) %>%  
  summarise(global_performance = mean(performance)) %>%  
  ggplot()+ 
  geom_line(mapping=aes(x=block,y=global_performance))
  
  
  
  new_df<-df %>%  
    group_by(mouse,block) %>%  
    summarise(performance = mean(correct)) 
  ggplot (data=new_df) + 
    geom_histogram(mapping = aes(x = performance),binwidth=0.01)
  
  df %>%  
    group_by(block) %>%  
    summarise(global_performance = mean(correct)*100) %>%  
    ggplot()+ 
    geom_line(mapping=aes(x=block,y=global_performance), color="blue")+
    ylim(40,100)+
    xlab("Block")+
    ylab("Performance(%)")+
    geom_hline(mapping=aes(yintercept=50),linetype="dashed")

  
  df1 <- df %>% group_by(mouse,block) %>%  
    summarise(performance = mean(correct)*100) 
  ggplot(data=df1) + 
    geom_point(mapping=aes(x=block,y=performance)) + 
    geom_line(mapping=aes(x=block,y=performance),color = "blue") + 
    ylab("Performance (%)") + 
    xlab("Block") + 
    geom_hline(mapping = aes(yintercept=50),linetype="dashed") + 
    facet_wrap(~mouse)
  
  install.packages("gridExtra")
  library("gridExtra")
  
  
  