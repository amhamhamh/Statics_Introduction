a<-1
a
b<-1
b
c<-a+b

height<-c(165,150,131)
height
d<-1:3
d
d<-1:9
#seq
e<-seq(1, 9, 2)
e
#객체를 여러가지 방법으로 만드는 것
f<-rep(10, 5)
f
g<-c(d, f)
g
h<-c(4:1, seq(0, 9, 3))
h

e+f
e-f
e*f
e/f
d
#d+f
factor()
i<-1:4
#범주형형
j<-as.factor(1:4)
i+1
#범주형 데이터형에는 더할 수는 없다.

k<-as.character(1:4)
l<-c("K","N","O","U")
m<-i>2

#행렬 만들기
n<-rep(10, 5)
o<-1:5
p<-cbind(n, o)
q<-rbind(n, o)
r<-matrix(1:4, 2, 2)
s<-matrix(c(1, 4, 2, 7), 2, 2)
  r+s
  r%%s
solve(s)
s[1, 2]

name<-c("kim", "Lee", "P", "C")
age<-c(20, 32, 17, 51)
sex<-as.factor(c("M", "F", "F", "F"))
dat<-data.frame(name, age, sex)
dat$name
dat$age
dat$sex

