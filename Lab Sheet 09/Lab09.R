setwd("C:\\Users\\user\\OneDrive - Sri Lanka Institute of Information Technology\\new\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24101376")
getwd()
data <- rnorm(25, mean = 45, sd = 2)
data

result <- t.test(data, mu = 46, alternative = "less")
result

