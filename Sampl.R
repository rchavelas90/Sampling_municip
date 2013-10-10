# define vector to load specific columns
nulls.vect<- c()
for(i in 1:(46)){
 nulls.vect <- c(nulls.vect,"NULL")
}
nulls.vect[7] <- "character"
nulls.vect[46] <- "character"
nulls.vect[47] <- "character"
nulls.vect

# Read file
df <- read.csv("denue_1_09.csv",skip=1,header=F,as.is=T,
               colClasses=nulls.vect,nrows=100)
head(df)
#Change clas of numeric columns
df$V46 <- as.numeric(df$V46)
df$V47 <- as.numeric(df$V47)
unique(df$V7)
# Geto only the colums with coordinates and "delegaciones"
head(df)
df
str(df$V7)

library(ggplot2)
library(ggmap)


ggplot(df,aes(x=V46,y=V47))+
 geom_point(alpha = 1/100)

latit <- mean(df$V46) ## latitude
longit <- mean(df$V47) ## longitud

mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=11,
                               size=c(640,640),
                               scale=2,
                               color="bw"
)

map <- ggmap(mapImageData,
      extent = "device", # "panel" keeps in axes, etc. or "device"
      ylab = "Latitude",
      xlab = "Longitude",
      legend = "right")

# png("map.png",height=1280,width=1280,pointsize=1,res=300)
map + geom_point(aes(x=V47,y=V46,colour=V7),data=df,alpha = 1/1,size=4)
# dev.off()

