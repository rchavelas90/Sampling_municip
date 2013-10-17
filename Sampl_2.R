## Revisar código!!!

# Extract random sample from delegación
set.seed(1)
i <- 1
index <- which(df2$municip == tabla_frec4$Deleg[i])
df4 <- df2[sample(index,tabla_frec4$Muestra[i]),]
 # df4 <- df2[index,]
head(df4)
length(df4$nombre)

# Map of locations

map_sample_df <- data.frame(location=numeric(nrow(df4)),nombre=numeric(nrow(df4)))
map_sample_df$location=paste(df4$latitude[1:nrow(df4)],df$longitude[1:nrow(df4)],sep=":")
map_sample_df$nombre <- df4$nombre


library(googleVis)
g2 <- gvisMap(map_sample_df,"location",
              tipvar="nombre",
              options=list(mapType='normal',
                           useMapTypeControl=T,
                           showTip=TRUE,
                           enableScrollWheel=T))
plot(g2)