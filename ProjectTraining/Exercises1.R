female <- read.csv("femaleMiceWeights.csv")
print(female)
print(female[12,2])

col <- female$Bodyweight[]
col[11]

length(col)
nrow(female)

col[seq(13,24)]
mean(col[seq(13,24)])


set.seed(1)
col[sample(13:24,1)]

