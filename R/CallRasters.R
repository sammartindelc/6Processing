#Master thesis Samantha MCM 
#October 30, 2015
#Call rasters script:

#Load library
library(raster)
library(rgdal)

#Get Hansen data
H_America <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_America.tif")
H_Africa <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Africa.tif")
H_Asia <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen/All/H_Asia.tif")

#Get Modis data
M_America <- brick("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/M_America.tif")
M_Africa <- brick("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/M_Africa.tif")
M_Asia <- brick("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/M_Asia.tif")

# m1 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2001Asia.tif")
# m2 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2002Asia.tif")
# m3 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2003Asia.tif")
# m4 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2004Asia.tif")
# m5 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2005Asia.tif")
# m6 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2006Asia.tif")
# m7 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2007Asia.tif")
# m8 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2008Asia.tif")
# m9 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2009Asia.tif")
# m10 <- raster("C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/Asia/2010Asia.tif")
# mA <- brick(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10)
# writeRaster(mA, filename = "C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC/All/M_Asia.tif", format = "GTiff", overwrite = T, bandorder='BIL')