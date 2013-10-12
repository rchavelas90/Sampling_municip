index <- which(df2$municip == tabla_frec4$Deleg[1])
df4 <- df2[index,]
head(df4)
length(df4$municip)

df4 <- df2[sample(index,3),]
df4