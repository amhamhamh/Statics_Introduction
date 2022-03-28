#1번문제 
library(ggplot2)
library(forcats)

studentScore<-c(88, 83, 83, 85, 94, 88, 91, 96,
                89, 83, 81, 80, 84, 89, 83, 79
                )
dat1<-data.frame(studentScore)
ggplot(data=dat1)  + geom_bar(mapping = aes(x=fct_infreq(transp))) + 
  xlab("Trasnportaion")