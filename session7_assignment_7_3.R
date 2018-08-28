#session7_assignment_7.3

#1. Create a box and whisker plot by class using mtcars dataset
library(ggplot2)
library(reshape2)
library(purrr)
library(tidyr)
data("mtcars")
df.m<-melt(mtcars)
ggplot(data=df.m,aes(x=variable, y=value))+geom_boxplot()+
  facet_wrap(~variable, scales = "free")

mtcars%>%gather(measure, value,  -gear) %>%
ggplot(aes(x=factor(gear), y=value, fill=factor(gear)))+geom_boxplot(outlier.colour="blue")+facet_wrap(~Measure, scales="free_y")+
ggtitle("Box and Whisker plot")+theme_bw()+theme(plot.title=element_text(hjust=0.5, size=22, face="bold"))
