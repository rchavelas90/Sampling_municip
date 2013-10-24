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

