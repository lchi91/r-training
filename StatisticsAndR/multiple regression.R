View(mtcars)
input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))

model <- lm(mpg~disp+hp+wt, data = input)
model
print(summary(model))

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")

a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]

print(Xdisp)
print(Xhp)
print(Xwt)

b <- data.frame(disp =c(1:3),hp=c(1:3),wt =c(1:3))
b
c <- data.frame(disp = 221, hp = 102, wt = 2.91)
result3 <- predict(model, c)
print(result3)
