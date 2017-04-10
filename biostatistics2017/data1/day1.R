read.table("relative.txt", header=T) -> relative
read.table("colon.txt", header=T) -> colon
read.csv("meguro96.csv", header=T) -> meguro96
relative
plot(age~prop,data=relative, xlim=c(0, 70), ylim=c(0, 80))
lm(age~prop, data=relative) -> relative.lm
relative.lm
summary(relative.lm)
abline(relative.lm)
relative.f <- (relative, sex=='F')
relative.m <- subset(relative, sex=='M')
abline(h=0, v=0)

meguro96[1:5, 1:7]

neighbor <- meguro96[,"q1.1"]
neighbor

table(neighbor) -> neighbor.tab
neighbor.tab
prop.table(neighbor.tab) -> neighbor.prop

neighbor.prop

barplot(neighbor.prop, xlab="association with neighbor", ylab="propotion")

colon[1:10, 1:5]
T1 <- colon[,"T1"]
summary(T1)
mean(T1)
sd(T1)

hist(T1)
boxplot(T1)
boxplot(T1, horizontal=T)