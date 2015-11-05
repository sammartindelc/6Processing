#Master thesis Samantha MCM 
#October 21, 2015
#Create Points script: Script to create spatialPointsDataFrame, convert contries to numbers 
#and calculate the laps of surverys years

#load libraries
if(!require(sp))
  install.packages("sp")
library(sp)

if(!require(maptools))
  install.packages("maptools")
library(maptools)

#Create SpatialPoints
coordinates(demographic) = c("x", "y")
proj4string(demographic)=CRS("+proj=longlat +datum=WGS84")

#Data in KLM and shape
kmlPoints(demographic, kmlfile="data/demographic.kml",kmlname="Demographic",
          icon="http://www.google.com/mapfiles/kml/paddle/wht-diamond.png")

writeOGR(demographic, dsn = 'data/', layer = 'demographic', driver = "ESRI Shapefile")

#Change to NA no available data
demographic@data$offyr[demographic@data$offyr==-9]<-NA
demographic@data$dem_yrvill[demographic@data$dem_yrvill==-9]<-NA
demographic@data$dem_pop[demographic@data$dem_pop==-9]<-NA
demographic@data$dem_pop10[demographic@data$dem_pop10==-9]<-NA
demographic@data$dem_out[demographic@data$dem_out==-9]<-NA

#Diff in population 
demographic@data$dem_diff <- demographic@data$dem_pop - demographic@data$dem_pop10
demographic@data$end_year <- demographic@data$offyr - 10
demographic@data$Country_num <- as.numeric(demographic$Country)
head(demographic@data)
str(demographic)