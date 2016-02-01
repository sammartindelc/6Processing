#Master thesis Samantha MCM 
#October 21, 2015
#Create Points script: Script to create spatialPointsDataFrame, convert contries to numbers 
#and calculate the laps of surverys years

#load libraries
library(sp)
library(xlsx)
library(rgdal)

#Create SpatialPoints
coordinates(demographic) = c("x", "y")
proj4string(demographic)=CRS("+proj=longlat +datum=WGS84")

#Change to NA no available data
demographic@data$offyr[demographic@data$offyr==-9]<-NA

#Diff in population 
demographic@data$Country_num <- as.numeric(demographic$Country)
demographic@data$net_mig <- demographic@data$dem_in - demographic@data$dem_out
demographic@data$rel_mig <- (demographic@data$net_mig / demographic@data$dem_pop)*100
demographic@data$nat_pop <- demographic@data$dem_pop - demographic@data$dem_pop10 - demographic@data$net_mig
demographic@data$diff_pop <- demographic@data$dem_pop - demographic@data$dem_pop10

#Elevation
demographic@data$MountE[demographic@data$elevation<=300] <- 0
demographic@data$MountE[demographic$elevation>2500 & demographic$elevation<=3500] <- 3
demographic@data$MountE[demographic$elevation>1500 & demographic$elevation<=2500] <- 4
demographic@data$MountE[demographic$elevation>1000 & demographic$elevation<=1500] <- 5
demographic@data$MountE[demographic$elevation>300 & demographic$elevation<=1000] <- 6
demographic@data$radiusM[demographic$MountCond==F]<- 4000
demographic@data$radiusM[demographic$MountCond==T]<- 5000

#Export as .xmls
write.xlsx(demographic, "E:/Thesis/7Results/PEN_WUR.xlsx")
writeOGR(demographic, dsn = '.', layer = 'demographic', driver = "ESRI Shapefile")
