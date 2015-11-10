#Master thesis Samantha MCM 
#October 28, 2015.
#Plot data script

#install library
library(rgdal)
library(plotGoogleMaps)
library(maptools)

##Plot before coordinates
#Using ggplot
mapWorld <- borders("world", colour="gray50", fill="gray50") # create a layer of borders 
mp <- ggplot() +   mapWorld 
mp <- mp+ geom_point(aes(x=x, y=y),data=demographic ,color="blue", size=3)  
mp 
#Using maps 
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0)) 
points(demographic$x,demographic$y, col="red", pch=16) 

#plot data after coordinates
spplot(demographic,zcol="offyr", xlim = bbox(demographic)[1, ]+c(-0.01,0.01), ylim = bbox(demographic)[2, ]+c(-0.01,0.01),
       scales= list(draw = TRUE))
#plotGoogle
plotGoogleMaps(demographic, zcol="offyr")

#Data in KLM 
kmlPoints(demographic, kmlfile="data/demographic.kml",kmlname="Demographic",
          icon="http://www.google.com/mapfiles/kml/paddle/wht-diamond.png")

#Data in shape
writeOGR(demographic, dsn = 'data/', layer = 'demographic', driver = "ESRI Shapefile")

#Delete variables without use
rm(map,mapPoints,mapWorld,mp)