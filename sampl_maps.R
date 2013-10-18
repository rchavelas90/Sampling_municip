## Plot locations of stores
###################### Plot all retail stores in Mexico City by "delegación"
require(ggplot2)
require(ggmap)

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

########################## Mapa all (just as an introduction image to the topic in megacities)

# png("map.png",height=1280,width=1280,pointsize=1,res=300)
mapa_all <- map + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),data=df,alpha = 1/2,size=0.5)+
 theme(legend.position="none")# By "delegación"
# dev.off()

##mapa_all

####################### retail / delegación
alp <-1/2 # define alppha levelof geom_point 
siz <-1 # define size 
mapa_retail_deleg <- map + geom_point(aes(x=longitude,y=latitude,colour=clav_municip),
                                data=df2,alpha = alp,size=siz)+
 theme(legend.position="none")# By "delegación"
mapa_retail_deleg_shpf <- mapa_retail_deleg + 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
                        mapping=aes(long,lat,group=group),
                        color="#858585",
           size=1.5)

## plot 

##mapa_retail_deleg_shpf

## Use alpha levels to see concentration of store (ZOOM=11)
mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=11,
                               size=c(640,640),
                               scale=2,
                               color="color"
)

map <- ggmap(mapImageData,
             extent = "device", # "panel" keeps in axes, etc. or "device"
             ylab = "Latitude",
             xlab = "Longitude",
             legend = "right")
alp <-1/15 # define alpha levelof geom_point
siz <-1.3# define size
mapa_retail_alph <- map + geom_point(aes(x=longitude,y=latitude),
                                data=df2,alpha = alp,size=siz, position="jitter")+
 theme(legend.position="none")# By "delegación"
mapa_retail_alph_shpf <- mapa_retail_alph + 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#858585",
           size=2.2) +
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#fbfbfb",
           size=0.4)

## plot
## mapa_retail_alph_shpf

##################### Use alpha levels to see concentration of store (ZOOM=12)

#latit <- mean(df2$latitude) ## latitude
latit <- 19.43315 # Mexico City Center
#longit <- mean(df2$longitude) ## longitud
longit <- -99.13327 # Mexico City Center
mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=12,
                               size=c(640,640),
                               scale=2,
                               color="color"
)

map <- ggmap(mapImageData,
             extent = "device", # "panel" keeps in axes, etc. or "device"
             ylab = "Latitude",
             xlab = "Longitude",
             legend = "right")
alp <-1/20 # define alpha levelof geom_point (1/20 interesting)
siz <-1.95# define size
mapa_retail_alph2 <- map + geom_point(aes(x=longitude,y=latitude),
                                     data=df2,alpha = alp,size=siz, position="jitter")+
 theme(legend.position="none")# By "delegación"
mapa_retail_alph_shpf2 <- mapa_retail_alph2 + 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#858585",
           size=2.2) +
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#fbfbfb",
           size=0.4)

## mapa_retail_alph_shpf2

###################### Use alpha levels to see concentration of store (ZOOM=12)

#latit <- mean(df2$latitude) ## latitude
latit <- 19.43315 # Mexico City Center
#longit <- mean(df2$longitude) ## longitud
longit <- -99.13327 # Mexico City Center
mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=13,
                               size=c(640,640),
                               scale=2,
                               color="color"
)

map <- ggmap(mapImageData,
             extent = "device", # "panel" keeps in axes, etc. or "device"
             ylab = "Latitude",
             xlab = "Longitude",
             legend = "right") 
alp <-1/10 # define alpha levelof geom_point (1/20 interesting)
siz <-2# define size
mapa_retail_alph3 <- map + geom_point(aes(x=longitude,y=latitude),
                                      data=df2,alpha = alp,size=siz, position="jitter")+
 theme(legend.position="none")# By "delegación"
mapa_retail_alph_shpf3 <- mapa_retail_alph3 + 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#858585",
           size=2.2) +
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#fbfbfb",
           size=0.4)

## mapa_retail_alph_shpf3


################################ Plot al retail stores with a heat map (zoom=11)
## See http://blenditbayes.blogspot.mx/2013/06/visualising-crime-hotspots-in-england_25.html
#latit <- mean(df2$latitude) ## latitude
latit <- 19.43315 # Mexico City Center
#longit <- mean(df2$longitude) ## longitud
longit <- -99.13327 # Mexico City Center

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

mapa_retail_densit1 <- map + 
 stat_density2d(aes(x     =longitude,
                    y     =latitude ,
                    fill  =..level..,
                    alpha =..level.. ),
                data=df2, 
                size = 0.3, ##Good level = 0.01
                bins = 10,  ## Change and experiment with no. of bins ##Good level = 11
                geom = "polygon"#, 
                #colour = "grey95"
                ) +
 
 ## Configure the scale and panel
 scale_fill_gradient(low = "yellow", high = "red") +
 scale_alpha(range = c(.25, .75), guide = FALSE) +  ## Change and experiment differnet values

 theme(legend.position="none")+
 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#858585",
           size=1.5)


## mapa_retail_densit1

################################ Plot al retail stores with a heat map (zoom=12)
## See http://blenditbayes.blogspot.mx/2013/06/visualising-crime-hotspots-in-england_25.html
#latit <- mean(df2$latitude) ## latitude
latit <- 19.43315 # Mexico City Center
#longit <- mean(df2$longitude) ## longitud
longit <- -99.13327 # Mexico City Center

mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=12,
                               size=c(640,640),
                               scale=2,
                               color="bw"
)

map <- ggmap(mapImageData,
             extent = "device", # "panel" keeps in axes, etc. or "device"
             ylab = "Latitude",
             xlab = "Longitude",
             legend = "right")

mapa_retail_densit2 <- map + 
 stat_density2d(aes(x     =longitude,
                    y     =latitude ,
                    fill  =..level..,
                    alpha =..level.. ),
                data=df2, 
                size = 0.3, ##Good level = 0.01
                bins = 10,  ## Change and experiment with no. of bins ##Good level = 11
                geom = "polygon"#, 
                #colour = "grey95"
 ) +
 
 ## Configure the scale and panel
 scale_fill_gradient(low = "yellow", high = "red") +
 scale_alpha(range = c(.25, .75), guide = FALSE) +  ## Change and experiment differnet values
 
 theme(legend.position="none")+
 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#858585",
           size=1.5)


## mapa_retail_densit3
################################ Plot al retail stores with a heat map (zoom=12)
## See http://blenditbayes.blogspot.mx/2013/06/visualising-crime-hotspots-in-england_25.html
#latit <- mean(df2$latitude) ## latitude
latit <- 19.43315 # Mexico City Center
#longit <- mean(df2$longitude) ## longitud
longit <- -99.13327 # Mexico City Center

mapImageData <-  get_googlemap(center= c(lon = longit, 
                                         lat = latit),
                               maptype="roadmap",
                               zoom=13,
                               size=c(640,640),
                               scale=2,
                               color="bw"
)

map <- ggmap(mapImageData,
             extent = "device", # "panel" keeps in axes, etc. or "device"
             ylab = "Latitude",
             xlab = "Longitude",
             legend = "right")

mapa_retail_densit3 <- map + 
 stat_density2d(aes(x     =longitude,
                    y     =latitude ,
                    fill  =..level..,
                    alpha =..level.. ),
                data=df2, 
                size = 0.3, ##Good level = 0.01
                bins = 10,  ## Change and experiment with no. of bins ##Good level = 11
                geom = "polygon"#, 
                #colour = "grey95"
 ) +
 
 ## Configure the scale and panel
 scale_fill_gradient(low = "yellow", high = "red") +
 scale_alpha(range = c(.25, .75), guide = FALSE) +  ## Change and experiment differnet values
 
 theme(legend.position="none")+
 
 geom_path(data=municip_shpf_DF_asdf, ## plot the shapefile by Delegación
           mapping=aes(long,lat,group=group),
           color="#858585",
           size=1.5)


## mapa_retail_densit3




