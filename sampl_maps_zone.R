############### Plot sampling zones ###############
############### see http://docs.ggplot2.org/current/geom_polygon.html for a small tutorial

##Get zones per group
zon <- read.csv("CSV/zonas.csv")
zontol <- zon[zon$id!="CSF",]
zoncsf <- zon[zon$id=="CSF",]

## Add zones to mapa_retail_denist3_zon
mapa_retail_densit3_zon <- mapa_retail_densit3 + 
 geom_polygon(data=zontol, aes(x=longitude,y=latitude, group=id),
                                 fill="#68b749",alpha=0.35)+
 geom_polygon(data=zoncsf, aes(x=longitude,y=latitude, group=id),
              fill="#df4031",alpha=0.35)

## Zoom plot
mapa_retail_densit3_zon2 <- 
 mapa_retail_densit3_zon + 
 coord_map(xlim=c(-99.11355,-99.16354), ## set limits to zoom
           ylim=c(19.40135,19.45583))

## mapa_retail_densit3_zon2

#png("map.png",height=1280,width=1280,pointsize=1,res=300)
#mapa_retail_densit3_zon2
#dev.off()


################ PLOT ESTABLISHMENTS PER ZONE 
stores_zone_plot <- function(zone,alp,siz){
## Get establishments within region
area_i <- zon[zon$id==zone,]
maxlat <- max(area_i$latitude)
minlat <- min(area_i$latitude)
maxlon <- max(area_i$longitude)
minlon <- min(area_i$longitude)
# maxlat;minlat;maxlon;minlon
subset <- df2$latitude<maxlat & df2$latitude>minlat & df2$longitude>minlon & df2$longitude<maxlon
# sum(subset)
df3 <- df2[subset,]


require(ggplot2)
require(ggmap)

latit <- mean(df3$latitude) ## latitude
#latit <- 19.43315 # Mexico City Center
longit <- mean(df3$longitude) ## longitud
#longit <- -99.13327 # Mexico City Center

mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=15,
                               size=c(640,640),
                               scale=2,
                               color="bw"
)

map <- ggmap(mapImageData,
             extent = "device", # "panel" keeps in axes, etc. or "device"
             ylab = "Latitude",
             xlab = "Longitude",
             legend = "right")


mapa_retail_deleg_Z <- map + geom_point(aes(x=longitude,y=latitude),colour="#f8971b",
                                      data=df3,alpha = alp,size=siz)+
 theme(legend.position="none")# By "delegación"
mapa_retail_deleg_nom_Z <- mapa_retail_deleg_Z +
 ggtitle(paste("Zona: ",zone))
 
## plot 
mapa_retail_deleg_nom_Z
}

alp <-.4 # define alppha levelof geom_point 
siz <-2 # define size 
mapcsf <- stores_zone_plot("CSF",alp,siz)
mapct1 <- stores_zone_plot("CT1",alp,siz)
mapct2 <- stores_zone_plot("CT2",alp,siz)
mapct3 <- stores_zone_plot("CT3",alp,siz)

################ GET NUMBER OF ESTABLISHMENTS
stores_zone_number <- function(zone){
 ## Get establishments within region
 area_i <- zon[zon$id==zone,]
 maxlat <- max(area_i$latitude)
 minlat <- min(area_i$latitude)
 maxlon <- max(area_i$longitude)
 minlon <- min(area_i$longitude)
 # maxlat;minlat;maxlon;minlon
 subset <- df2$latitude<maxlat & df2$latitude>minlat & df2$longitude>minlon & df2$longitude<maxlon
 sum(subset)
}
numcsf <- stores_zone_number("CSF")
numct1 <- stores_zone_number("CT1")
numct2 <- stores_zone_number("CT2")
numct3 <- stores_zone_number("CT3")

