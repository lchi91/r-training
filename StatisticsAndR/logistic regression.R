input <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))

am.data <- glm(am ~ cyl + hp + wt, data = input, family = binomial)
print(summary(am.data))

d <- data.frame(cyl = 10, hp = 10 , wt = 10)
result4 <- predict(am.data, d)
print(result4)
