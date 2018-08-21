#session7_assignment_7.3

#1. Create a box and whisker plot by class using mtcars dataset
library(ggplot2)
library(reshape2)
data("mtcars")
df.m<-melt(mtcars)
ggplot(data=df.m,aes(x=variable, y=value))+geom_boxplot()+
  facet_wrap(~variable, scales = "free")
