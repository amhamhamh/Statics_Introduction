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


#이항분포(당첨률 30% - 0.3 복권 8장) - 3장에서 7장이 당첨될 확률
#pbinom(확률변수, 전체 경우의 수, 그럴 확률)
pbinom(7, 8, 0.3) - pbinom(2, 8, 0.3)
#총 6장이 될 확률
1-pbinom(5, 8, 0.3)

#100개 생산시, 불량품이 3개에서 7개일 확률률
pbinom(7, 100, 0.5) - pbinom(2, 100, 0.5)

#하루 평균 6건의 불량수표를 받을 때, 특정한 날 4번 받은 확률(포아송 분포)
dpois(4, 6)

#정규분포 확률(x <  94.3) 확률. 평균 70, 정규분포 10
pnorm(94.3, 70, 10)

#정규분포 확률(x > 57.7 ) 확률. 평균 70, 정규분포 10
1 - pnorm(57.7, 70, 10)

#정규 분포 확률(X > 50)  확률. 평균 40, 정규분포포 5
1 - pnorm(50, 40, 5)

