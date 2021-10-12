setwd ("/Users/pro/Documents")
df<-read.csv("nganhang.csv", header = TRUE)
head(df)
View(df)

attach(df)
df$Age
names(df)
summary(Age)
summary(Duration)
summary(Credit.amount)
#Age
hist(Age)
#Duration
hist(Duration)
#Credit
hist(Credit.amount)
#Sex
counts <- table(Sex)
counts
barplot(counts, main="Female & Male",
        xlab="Sex", ylab="Quantity", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)
#Housing
counts <- table(Housing)
counts
barplot(counts, main="Housing",
        xlab="Type", ylab="Quantity", col=c("darkblue","red","black"),
        legend = rownames(counts), beside=TRUE)
#Job
#số: 0 - không có việc làm, 1 - việc làm không ổn định, 2 - công việc tạm ổn, 3 - có công việc ổn định
counts <- table(Job)
counts
barplot(counts, main="Job",
        xlab="Type", ylab="Quantity", col=c("green","red","black", "yellow"),
        beside=TRUE)
#Purpose
counts <- table(Purpose)
counts
barplot(counts, main="Purpose",
        xlab="Type", ylab="Quantity",
        beside=TRUE)
#Phanphoichuan
shapiro.test(Age)
par(mfrow=c(2,2))
hist(Age)
qqnorm(Age, lwd=0.5, cex.axis=1, cex.lab=1)
qqline(Age, lwd=1.5, col="red")

shapiro.test(Duration)
par(mfrow=c(2,2))
hist(Duration)
qqnorm(Duration, lwd=0.5, cex.axis=1, cex.lab=1)
qqline(Duration, lwd=1.5, col="blue")


