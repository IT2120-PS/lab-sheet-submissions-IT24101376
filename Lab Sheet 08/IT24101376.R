setwd("C:\\Users\\ASUS TUF\\Desktop\\sakith\\IT24101376_Lab8")
getwd()

# Import dataset
bag_weights <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(bag_weights)
attach(bag_weights) 

# Question 1:
popmean <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

popmean
popsd

# Question 2
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i, sep=''))
}

colnames(samples)=n
fix(samples)

s.means <- apply(samples, 2, mean)
s.means
s.sds <- apply(samples, 2, sd)
s.sds

# Question 3
samplemean <- mean(s.means)
samplemean

samplesd <- sd(s.means)
samplesd

popmean
samplemean

truesd=popsd/5
truesd
samplesd
