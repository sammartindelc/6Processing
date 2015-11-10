#Master thesis Samantha MCM 
#October 21, 2015
#Create Points script: Script to create spatialPointsDataFrame, convert contries to numbers 
#and calculate the laps of surverys years

#load libraries
library(sp)

#Create SpatialPoints
coordinates(demographic) = c("x", "y")
proj4string(demographic)=CRS("+proj=longlat +datum=WGS84")

#Change to NA no available data
demographic@data$offyr[demographic@data$offyr==-9]<-NA
demographic@data$dem_yrvill[demographic@data$dem_yrvill==-9]<-NA

#Diff in population 
demographic@data$Country_num <- as.numeric(demographic$Country)
demographic@data$net_mig <- demographic@data$dem_in - demographic@data$dem_out
demographic@data$rel_mig <- (demographic@data$net_mig / demographic@data$dem_pop)*100