######### Plot locations of stores
library(ggplot2)
library(ggmap)

latit <- mean(df2$latitude) ## latitude
#latit <- 19.43315 # Mexico City Center
longit <- mean(df2$longitude) ## longitud
#longit <- -99.13327 # Mexico City Center

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


## plot all retail stores in Mexico City by "delegación"
alp <-1/2 # define alppha levelof geom_point  (all data =  0.5)
siz <-1/2 # define size (all data =  0.5)
mapa_retail <- map + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),
                                data=df2,alpha = alp,size=siz)+
 theme(legend.position="none")# By "delegación"
mapa_retail + 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
                        mapping=aes(long,lat,group=group),
                        color="#DF3A01")





# png("map.png",height=1280,width=1280,pointsize=1,res=300)
mapa_all <- map + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),data=df,alpha = 1/2,size=0.5)+
 theme(legend.position="none")# By "delegación"
mapa_all
# dev.off()


## plot all retail stores in Mexico City by "delegación"
alp <-1/2 # define alppha levelof geom_point  (all data =  0.5)
siz <-1/2 # define size (all data =  0.5)
mapa_retail <- ggplot() + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),
                                data=df2,alpha = alp,size=siz)+
 theme(legend.position="none")# By "delegación"
mapa_retail + 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#DF3A01")+ coord_equal()
