library(ggplot2)

transp<-c("bicycle","bicycle", "bicycle", "bicycle", "bicycle",  
          "bus","bus","bus","bus","bus","bus","bus","bus",
          "walking","walking","walking","walking","walking","walking"
          )
dat1<-data.frame(transp)
#데이터, aes - x 축, xlab()으로 이름 바꾸기기
install.packages("forcats")
library(forcats)
#fct_infreq(x축) - 빈도수 높은 순으로 불러오기기
ggplot(data=dat1)  + geom_bar(mapping = aes(x=fct_infreq(transp))) + 
  xlab("Trasnportaion")


obesity<-factor(c("underweight", "normal","overweight","obese"),
                level=c("underweight","normal",
                        "overweight", "obese"
                        ))

count<-c(6, 69, 27, 13)
perc<-count/sum(count)*100
dat2<-data.frame(obesity, count, perc)

#stat으로 안정시키기기
ggplot(data=dat2) + geom_bar(mapping = aes(x=obesity, y=perc), stat="identity") +
  xlab("Obesity") + ylab("Percentage(%)")

table(transp)
dat3<-data.frame(transportation=c("bus","bicycle","walking"),
                 count=c(15, 13, 4)
                 )

ggplot(data=dat3) + geom_bar(mapping = aes(x="", y=count, fill=transportation), stat="identity") +
  coord_polar("y", start=0) + xlab("")+ylab("")+
  #전체적인 항목을 정리리
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank()
        )


