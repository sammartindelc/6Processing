#Create kml file per country
name <- c("Belize","Bolivia","Ecuador","Brazil",
          "Bangladesh","China","India","Indonesia","Nepal","Vietnam","Cambodia",
          "Ethiopia","Malawi","Mozambique","Senegal","Ghana (Dry)", "Ghana (Wet)","Uganda","Zambia",
          "Burkina Faso", "Nigeria", "DRC")
for (country in name) {
  pais <- subset(demographic,demographic$Country == country, select=c("Village")) 
  kmlPoints(pais, kmlfile=sprintf("data/kml/%s.kml",country),kmlname="Demographic",
            icon="http://www.google.com/mapfiles/kml/paddle/wht-diamond.png")
}
rm(country, name, pais)

#create stacks of different rasters with same extent different scale
library(raster)
m1 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2001.tif")
m2 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2002.tif")
m3 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2003.tif")
m4 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2004.tif")
m5 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2005.tif")
m6 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2006.tif")
m7 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2007.tif")
m8 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2008.tif")
m9 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2009.tif")
m10 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am2010.tif")
mA <- stack(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10)
writeRaster(mA, filename = "C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Am.tif", 
            format = "GTiff", overwrite = T, bandorder='BIL')

#Histogram of village's elevation
hist(demographic$elevation, breaks=c(seq(0,3300,100)))
high <- subset(demographic,demographic$elevation >=678)

#pie try
data <- subset(demographic, demographic$Continent=="America",select=c("dem_pop","net_mig","nat_pop"))
for (village in 1:length(data)){
  pie(data[village,])
}