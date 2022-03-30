#1번문제 
library(ggplot2)
library(forcats)

studentScore<-c(88, 83, 83, 85, 94, 88, 91, 96,
                89, 83, 81, 80, 84, 89, 83, 79

                )

hist(studentScore, main="학생들의 점수", xlab="점수", ylab="학생수", breaks = 5)
boxplot(studentScore, main="학생들의 점수", ylab="점수", breaks = 5)
fivenum(studentScore)


  