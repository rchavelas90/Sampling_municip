library(ggplot2)
library(ggmap)

#latit <- mean(df2$latitude) ## latitude
latit <- 19.43315 # Mexico City Center
#longit <- mean(df2$longitude) ## longitud
longit <- -99.13327 # Mexico City Center

mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=10,
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
mapa_all <- map + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),data=df,alpha = 1/1,size=1) # By "delegación"
# of all data from DENUE
mapa_all
map + geom_point(aes(x=longitude,y=latitude,colour=Status),data=df2,alpha = 1/1,size=1) # By status

# dev.off()

head(df2)