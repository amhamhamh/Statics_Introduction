#1번문제 
library(ggplot2)
library(forcats)

studentScore<-c(88, 83, 83, 85, 94, 88, 91, 96,
                89, 83, 81, 80, 84, 89, 83, 79
                )

hist(studentScore, main="학생들의 점수", xlab="점수", ylab="학생수", breaks = 5)
boxplot(studentScore, main="학생들의 점수", ylab="점수", breaks = 5)
fivenum(studentScore)

#2번 문제
studentExercise <-c(24, 41, 35, 8, 52, 23, 32, 37, 42, 28)
t.test(studentExercise, mu=25, alternative = "two.sided")
#p-값: 0.09613  > 0.05
#귀무가설을 채택하고 대립가설을 기각각한다
#읽은 책 수의 평균이 25와 같지 않다.

#3번 문제
after<-c(76,55,52,79,72)
before<-c(80, 56, 49, 82, 70)
t.test(after, before, alternative="less", paired=TRUE)
#p-값 :  0.3414 < 0.05
#귀무가설을 기각하고 대립가설을 채택
#결론 : 체중 감량효과가 없다.

#4번 문제
salary<-c(269, 196, 254, 226, 215, 228, 251, 217, 260, 240,
          320, 281, 336, 303, 294, 354, 315, 259,
          283, 268, 357, 325, 288, 295, 272, 245, 275, 246, 341
          )
a<-c(rep(1, 10), rep(2,8), rep(3, 11))
a<-factor(a)
salary_factor<-data.frame(salary, a)
salary_factor_1 <- aov(salary ~ a, data=salary_factor)
summary(salary_factor_1)
#p값 = 7.17e-05 > 0.05
#귀무가설을 채택한다
#직업군에 따라 월급 평균이 다르다.


#5번문제
mat<-matrix(c(30, 18, 30, 15), nrow=2)
mat
chisq.test(mat, correct = FALSE)
#p-value = 0.6747 > 0.05
#귀무가설을 기각하지 못한다.
#A백신과 B백신의 부작용은 독립이다.

#6번문제
x_1<-c(72, 80, 83, 63, 66, 76, 82)
y_1<-c(78, 82, 82, 68, 70, 75, 88)
dat<-cbind(x_1, y_1)
plot(x=x_1, y=y_1, xlab = "방과 후 학습전", ylab="방과 후 학습 후")
cor(x_1, y_1)
reg<-lm(y_1 ~ x_1)
summary(reg)
abline(reg)












































>>>>>>> .theirs
