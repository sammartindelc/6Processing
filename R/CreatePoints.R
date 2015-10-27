#Master thesis Samantha MCM 
#October 21, 2015
#Create Points script: Script to create spatialPointsDataFrame, convert contries to numbers 
#and calculate the laps of surverys years

#load libraries
if(!require(sp))
  install.packages("sp")
library(sp)

if(!require(rgdal))
  install.packages("rgdal")
library(rgdal)

if(!require(plotGoogleMaps))
  install.packages("plotGoogleMaps")
library(plotGoogleMaps)

##Plot before coordinates
#Using ggplot
mapWorld <- borders("world", colour="gray50", fill="gray50") # create a layer of borders 
mp <- ggplot() +   mapWorld 
mp <- mp+ geom_point(aes(x=x, y=y),data=demographic ,color="blue", size=3)  
mp 
#Using maps 
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0)) 
points(demographic$x,demographic$y, col="red", pch=16) 

#Create SpatialPoints
coordinates(demographic) = c("x", "y")
proj4string(demographic)=CRS("+proj=longlat +datum=WGS84")

#Change to NA no available data
demographic@data$offyr[demographic@data$offyr==-9]<-NA
demographic@data$dem_yrvill[demographic@data$dem_yrvill==-9]<-NA
demographic@data$dem_pop[demographic@data$dem_pop==-9]<-NA
demographic@data$dem_pop10[demographic@data$dem_pop10==-9]<-NA
demographic@data$dem_in[demographic@data$dem_in==-9]<-NA
demographic@data$dem_out[demographic@data$dem_out==-9]<-NA

demographic<-na.omit(demographic)

#Diff in population 
demographic@data$dem_diff <- demographic@data$dem_pop - demographic@data$dem_pop10
demographic@data$end_year <- demographic@data$offyr - 10
demographic@data$Country_num <- as.numeric(demographic$Country)
head(demographic@data)
str(demographic)

#plot data after coordinates
spplot(demographic,zcol="offyr", xlim = bbox(demographic)[1, ]+c(-0.01,0.01), ylim = bbox(demographic)[2, ]+c(-0.01,0.01),
       scales= list(draw = TRUE))
#plotGoogle
plotGoogleMaps(demographic, zcol="offyr")

#Delete variables without use
rm(map,mapPoints,mapWorld,mp)