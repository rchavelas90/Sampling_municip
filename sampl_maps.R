library(ggplot2)
library(ggmap)



latit <- mean(df$latitude) ## latitude
longit <- mean(df$longitude) ## longitud

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
map + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),data=df,alpha = 1/1,size=2)
# dev.off()
