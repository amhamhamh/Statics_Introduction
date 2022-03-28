book <- c(5, 23, 20, 1, 10, 15, 15, 10, 9, 13, 18, 11, 18, 20, 19, 19)
t.test(book,mu=11, alternative = "greater") 

prop.test(35, 50, p=0.6, alternative="greater", correct=FALSE)
sqrt(2.0833)

library(EnvStats)
books=c(5, 23, 20, 1, 10, 15, 15, 10, 9, 13, 18, 11)
varTest(books, alternative="greater", sigma.squared=16)

female<-c(55, 50, 81, 89, 53, 88, 59, 53, 87, 71, 79, 75, 78, 61, 54, 50, 54, 81, 60, 78)
male<-c(55, 79, 81, 86, 78, 51, 74, 52, 85, 62, 59, 87, 87, 75, 77)
t.test(female, male, alternative = "two.sided", var.equal = T)
t.test(female, male, alternative = "two.sided")

before<-c(72, 80, 83, 63, 66, 76, 82)
after<-c(78, 82, 82, 68, 70, 75, 88)
t.test(before, after, alternative="less", paired=TRUE)

x <- c(84,83,82,85,89,86,93,94,96,89,89,87)
A <- c(rep(1,3), rep(2,3),rep(3,3),rep(4,3))
A <- factor(A)
aovdat1 <- data.frame(x, A)
aovmodel1 <- aov(x ~ A, data=aovdat1)
summary(aovmodel1)

y <- c(97.8, 97.5, 96.9, 98.5, 98.8, 97.1, 99.2, 98.4, 98.1, 98.2, 97.5, 96.8)
surface <- c(rep(1,3), rep(2,3),rep(3,3),rep(4,3))
manu <- rep(c(1,2,3),4)
surface <- factor(surface)
manu <- factor(manu)
aovdat2 <- data.frame(surface, manu)
aovmodel2 <- aov(y ~ surface + manu, data=aovdat2)
summary(aovmodel2)

mat<-matrix(c(20, 13, 30, 12), nrow=2)
mat
chisq.test(mat, correct=FALSE)

dept <- c(rep("Stat",50),rep("DS",25))
regi <- c(rep("Y",20),rep("N",30),rep("Y",13),rep("N",12))
chisq.test(x=dept, y=regi, correct=F)

fire.alarm<-c(50, 62, 26, 18, 4)
general.p<-c(0.3, 0.4, 0.15, 0.1, 0.05)
chisq.test(fire.alarm, p=general.p)

x <- c(56,80,50,78,65,75,53,57,53,44)
y <- c(164,180,160,175,170,175,160,169,165,150)
cor(x, y)

x <- c(56,80,50,78,65,75,53,57,53,44)
y <- c(164,180,160,175,170,175,160,169,165,150)
reg <-lm(y~x)
summary(reg)
plot(x, y)
abline(reg)

x1 <- c(4,6,6,7,8,9,9,9,11,12)
x2 <- c(3,4,5,5,6,7,6,8,8,9)
y <- c(38,42,46,47,50,53,52,56,58,62)
reg1 <- lm(y ~ x1+x2)
summary(reg1)
res <- resid(reg1)
plot(fitted(reg1),res)
abline(0,0)
qqnorm(res)
qqline(res)

