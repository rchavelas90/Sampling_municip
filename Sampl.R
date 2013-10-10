# define vector to load specific columns
nulls.vect<- c()
for(i in 1:(46)){
 nulls.vect <- c(nulls.vect,"NULL")
}
nulls.vect[c(6,7,12,33,34,46,47)] <- "character" # Use columns of "Clave de municipio", "Municipio", Name,
# SCIAN code, SCIAN code name, latutude and longitude
#nulls.vect

# Read file
df <- read.csv("CSV/denue_1_09.csv",
               skip=1,
               header=F,
               as.is=T,
               colClasses=nulls.vect,
               #nrows=50000,
               check.names=T
               )
#head(df,10)

# Add names to columns # Using columns of "Clave de municipio", "Municipio", Name,
# SCIAN code, SCIAN code name, latutude and longitude

colnames(df) <- c("clav_municip","municip","nombre","cod_SCIAN","nombre_SCIAN","latitude","longitude")
#head(df,10)
#Change class of numeric columns
df$latitude <- as.numeric(df$latitude)
df$longitude <- as.numeric(df$longitude)
#str(df)
#unique(df$municip)

unique(df$cod_SCIAN)