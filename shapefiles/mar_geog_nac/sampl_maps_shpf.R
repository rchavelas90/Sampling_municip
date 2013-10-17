
## learn to load shapefiles
## useful resources 
## https://github.com/hadley/ggplot2/wiki/plotting-polygon-shapefiles
## http://www.nceas.ucsb.edu/scicomp/usecases/ReadWriteESRIShapeFiles
## http://facweb.knowlton.ohio-state.edu/pviton/courses2/crp87105/spatial-data.html
library("rgdal") # requires sp, will use proj.4 if installed
library("maptools")
library("plyr")
setwd("shapefiles/ecoregion_design")
utah = readOGR(dsn=".", layer="eco_l3_ut")
ogrInfo(dsn=".","eco_l3_ut")
head(utah@data,12)
utah@data$id = rownames(utah@data)
str(utah@polygons[1]) ## first (Id =0) polygon
utah.points = fortify(utah, region="id")
str(utah.points)
head(utah.points)
utah.df = join(utah.points, utah@data, by="id")
head(utah.df,30)
## plot
ggplot(utah.df) + 
 aes(long,lat,group=group,fill=LEVEL3_NAM) + 
 geom_polygon() +
 geom_path(color="white") +
 coord_equal() +
 scale_fill_brewer("Utah Ecoregion")

## Plot IFE Shapefiles WITH RGDAL by entity
## Plot  all 
library("rgdal") # requires sp, will use proj.4 if installed
library("maptools") 
library("testthat")
setwd("shapefiles/mar_geog_nac") # set wd in which shapefiles are
ogrInfo(".",layer="ENTIDAD") # Get info of shapefile

entidad_shpf <- readOGR(dsn=".",layer="ENTIDAD") ## read shapefile "ENTIDAD
summary(entidad_shpf)
class(entidad_shpf) ## CLASS "SpatialPolygonsDataFrame"
getClass("SpatialPolygonsDataFrame") ## information of the class
plot(entidad_shpf,axes=T,border="gray") ## plot the shapefile
entidad_shpf@proj4string
row.names(entidad_shpf) <- as.character(entidad_shpf$ENTIDAD) ## MAGIC!!!!
## this changes the Id variable of each polygon ID with the desired name
row.names(entidad_shpf) ## see names of polygons
str(entidad_shpf@polygons[3],max.level=3) ## see how the names were changed to
## the name of each state (or entity number)

names.polygons<-sapply(entidad_shpf@polygons, function(x) slot(x,"ID"))
## get the desired slot for the state we want, this is the same as
## this tells us the same as row.names(entidad_shpf)

## to delete data see http://facweb.knowlton.ohio-state.edu/pviton/courses2/crp87105/spatial-data.html
## extract only Mexico City Shapefile
entidad_shpf_DF <- entidad_shpf[25,]
row.names(entidad_shpf_DF)
str(entidad_shpf_DF@polygons,max.level=3)
str(entidad_shpf_DF)
entidad_shpf_DF@data
row.names(entidad_shpf_DF) <- as.character(entidad_shpf_DF$NOMBRE)
plot(entidad_shpf_DF,axes=T,border="gray") ## plot the shapefile


## Plot IFE Shapefiles WITH RGDAL by entity
## Plot  municipalities
setwd("shapefiles/mar_geog_nac") # set wd in which shapefiles are
munici_shpf <- readOGR(dsn=".",layer="MUNICIPIO") ## read shapefile "MUNICIPIO"
ogrInfo(".",layer="MUNICIPIO") # wet info of shapefile
class(munici_shpf)
plot(munici_shpf)
head(munici_shpf@data)
row.names(munici_shpf)
str(munici_shpf@polygons[1],max.level=3)
filter_mex_city <- which(munici_shpf@data$ENTIDAD==9)
municip_shpf_DF <- munici_shpf[filter_mex_city,]
str(municip_shpf_DF@polygons,max.level=3)
row.names(municip_shpf_DF) <- as.character(municip_shpf_DF$NOMBRE)
## municip_df <- munici_shpf@data[munici_shpf@data$ENTIDAD==9,]
municip_shpf_DF@data
plot(municip_shpf_DF,axes=T,border="gray")


##use that shapefile to plot in GGPLOT2
require("rgdal") # requires sp, will use proj.4 if installed
require("maptools")
require("ggplot2")
require("plyr")
municip_shpf_DF_asdf <- fortify(municip_shpf_DF)
head(municip_shpf_DF_asdf,10)

ggplot(municip_shpf_DF_asdf) + 
 aes(long,lat,group=group,fill=id) + 
 geom_polygon() +
 geom_path(color="white") +
 coord_equal() 

p <- ggplot()+
 geom_polygon(data=municip_shpf_DF_asdf,
              mapping=aes(long,lat,group=group,fill=id))+
 coord_equal() 
p+ geom_path(data=municip_shpf_DF_asdf,
             mapping=aes(long,lat,group=group),
             color="black")

###try to change coordinate system of munici_shpf
### or directly to municip_shpf_DF_asdf
### https://stat.ethz.ch/pipermail/r-help/2013-June/355297.html
summary(munici_shpf)
is.projected(munici_shpf)
proj4string(munici_shpf)
head(municip_shpf_DF_asdf)

?spTransform
?proj4string

