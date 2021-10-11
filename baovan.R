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
hist(Age)
shapiro.test(Duration)
hist(Duration)


