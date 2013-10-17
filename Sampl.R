## Load libraries
suppressPackageStartupMessages(library(googleVis))
op <- options(gvis.plot.tag=NULL) #'chart'

## define vector to load specific columns
nulls.vect<- c()
for(i in 1:(46)){
 nulls.vect <- c(nulls.vect,"NULL")
}
nulls.vect[c(6,7,12,33,34,44,46,47)] <- "character" # Use columns of "Clave de municipio", "Municipio", Name,
# SCIAN code, SCIAN code name, Status, latutude and longitude
#nulls.vect

## Read file
df <- read.csv("CSV/denue_1_09.csv",
               skip=1,
               header=F,
               as.is=T,
               colClasses=nulls.vect,
               #nrows=100,
               check.names=F
               )
#head(df,10)

## Add names to columns # Using columns of "Clave de municipio", "Municipio", Name,
# SCIAN code, SCIAN code name, Status, latutude and longitude
colnames(df) <- c("clav_municip","municip","nombre","cod_SCIAN","nombre_SCIAN","Status","latitude","longitude")


#Change class of numeric columns
df$latitude <- as.numeric(df$latitude)
df$longitude <- as.numeric(df$longitude)
df$cod_SCIAN <- as.integer(df$cod_SCIAN)

########### Match codes with used SCIAN codes
df_cod <- read.csv("CSV/SCIAN_cod.csv",header=T,as.is=T)
establecimientos_minoristas <- sum(df$cod_SCIAN %in% df_cod$SCIAN_por_incluir) # get number of retail store
establecimientos_todos  <- length(df$cod_SCIAN) # get total number of store
df2 <- df[df$cod_SCIAN %in% df_cod$SCIAN_por_incluir,]

################# have a frecuency table of the SCIAN Code
tabla_frec2 <- table(df2$cod_SCIAN)
tabla_frec_ord2 <- sort(tabla_frec2,decreasing=T) # Sort frequency table
df_frec <- as.data.frame(as.matrix(tabla_frec_ord2)) # COnvert it to DF
df_frec$cod_SCIAN <- row.names(df_frec) #Remove names and use them as the code column
row.names(df_frec) <- NULL

## Merge both DF so we can have a DF with the sorted value of the freq and the description of the field
order_frec <- match(df_frec$cod_SCIAN,df_cod$SCIAN_por_incluir)
tabla_frec2 <- data.frame(df_frec,df_cod[order_frec,])
## Reorder columns in DF
tabla_frec2 <- data.frame(Cod_SCIAN=tabla_frec2$cod_SCIAN,
                          Establec=tabla_frec2$V1,
                          Descrip=tabla_frec2$Desc)

table1 <- gvisTable(tabla_frec2,options=list(page='enable',width=700,pageSize=20))
plot(table1)

## Get frequency by "Delegación" and percentage
tabla_frec3 <- table(df2$municip)
tabla_frec_ord3 <- sort(tabla_frec3,decreasing=T)
tabla_frec3<- as.data.frame(as.matrix(tabla_frec_ord3))
tabla_frec3$deleg <- row.names(tabla_frec3)
row.names(tabla_frec3) <- NULL
colnames(tabla_frec3) <- c("Establec","Deleg")
tabla_frec3 <- tabla_frec3[,c(2,1)]
total_frec3 <- sum(tabla_frec3$Establec)
tabla_frec3$Porcent <- round(tabla_frec3$Establec/total_frec3,3)

# determine number of surveys
total_sample <- 200
tabla_frec3$Muestra <- ceiling(tabla_frec3$Porcent*total_sample)
table2 <- gvisTable(tabla_frec3,options=list(page='enable',width=600,pageSize=16))
plot(table2)

## Get frequency by "Delegación" and percentage (without last 7 )
tabla_frec4 <- table(df2$municip)
tabla_frec_ord4 <- sort(tabla_frec4,decreasing=T)
tabla_frec4<- as.data.frame(as.matrix(tabla_frec_ord4))
tabla_frec4$deleg <- row.names(tabla_frec4)
row.names(tabla_frec4) <- NULL
colnames(tabla_frec4) <- c("Establec","Deleg")
tabla_frec4 <- tabla_frec4[,c(2,1)]
tabla_frec4 <- tabla_frec4[1:9,]
total_frec4 <- sum(tabla_frec4$Establec)
tabla_frec4$Porcent <- round(tabla_frec4$Establec/total_frec4,3)
# determine number of surveys
total_sample <- 200
tabla_frec4$Muestra <- ceiling(tabla_frec4$Porcent*total_sample)
table3 <- gvisTable(tabla_frec4,options=list(page='enable',width=600,pageSize=16))
plot(table3)





############ Get a sample of the retail stores ##################### 
############ this is only to ease the map creation, it can be removed later
set.seed(1) # set seed to replicate results
row_samp <- sample(nrow(df2),200) ## sample the rows of df2
df2 <- df2[row_samp,] ## subset with the sample rows
rm("df")


## Get frequency by Status
tabla_frec4 <- table(df2$Status)
tabla_frec_ord4 <- sort(tabla_frec4,decreasing=T)
tabla_frec4<- as.data.frame(as.matrix(tabla_frec_ord4))
tabla_frec4$Status <- row.names(tabla_frec4)
row.names(tabla_frec4) <- NULL
colnames(tabla_frec4) <- c("frecuencia","Status")
tabla_frec4 <- tabla_frec4[,c(2,1)]

tabla_frec4


