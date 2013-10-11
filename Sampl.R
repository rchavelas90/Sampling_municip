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
               #nrows=50,
               check.names=F
               )
head(df,10)

## Add names to columns # Using columns of "Clave de municipio", "Municipio", Name,
# SCIAN code, SCIAN code name, Status, latutude and longitude
colnames(df) <- c("clav_municip","municip","nombre","cod_SCIAN","nombre_SCIAN","Status","latitude","longitude")
# length(df$cod_SCIAN)
# head(df)
#Change class of numeric columns
df$latitude <- as.numeric(df$latitude)
df$longitude <- as.numeric(df$longitude)
df$cod_SCIAN <- as.integer(df$cod_SCIAN)
#str(df)
#unique(df$municip)

## Write a CSV file to observe how it worked
# write.csv(df,file="CSV/actv_econ.csv")

## have a frecuency table of the SCIAN Code
tabla_frec <- table(df$cod_SCIAN)
# tabla_frec
tabla_frec_ord <- sort(tabla_frec,decreasing=T)
# write.csv(tabla_frec_ord,file="CSV/frec.csv")

########### Match codes with used SCIAN codes
df_cod <- read.csv("CSV/SCIAN_cod.csv",header=T,as.is=T)
df_cod
df_cod$SCIAN_por_incluir
sum(df$cod_SCIAN %in% df_cod$SCIAN_por_incluir)
df2 <- df[df$cod_SCIAN %in% df_cod$SCIAN_por_incluir,]
# df2 <- df[df$cod_SCIAN %in% 461110,] # Match only code 461110
unique(df2$cod_SCIAN)
length(unique(df2$cod_SCIAN))
length(df2$cod_SCIAN)


################# have a frecuency table of the SCIAN Code
tabla_frec2 <- table(df2$cod_SCIAN)
 # Sort frequency table
tabla_frec_ord2 <- sort(tabla_frec2,decreasing=T)
#write.csv(tabla_frec_ord2,file="CSV/frec.csv")
 # COnvert it to DF
df_frec <- as.data.frame(as.matrix(tabla_frec_ord2))
 #Remove names and use them as the code column
df_frec$cod_SCIAN <- row.names(df_frec)
row.names(df_frec) <- NULL
df_frec
## Merge both DF so we can have a DF with the sorted value of the freq and the description of the field
order_frec <- match(df_frec$cod_SCIAN,df_cod$SCIAN_por_incluir)
tabla_frec2 <- data.frame(df_frec,df_cod[order_frec,])
## Reorder columns in DF
tabla_frec2 <- data.frame(cod_SCIAN=tabla_frec2$cod_SCIAN,
                          freq=tabla_frec2$V1,
                          desc=tabla_frec2$Desc)
head(tabla_frec2)
sum(tabla_frec2$freq)
write.csv(tabla_frec2,file="CSV/frec2.csv")

## Get frequency by "Delegación"
head(df2)



