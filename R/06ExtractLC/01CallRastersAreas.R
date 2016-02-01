#Master thesis Samantha MCM 
#January 29, 2016
#Call rasters script: depending on dataset and class

#Load library
library(raster)
library(rgdal)

#Modis data
Am_F01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_Forest.tif")
Am_F10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_Forest10.tif")
Am_A01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_Agriculture.tif")
Am_A10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_Agriculture10.tif")
Am_S01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_Savana.tif")
Am_S10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_Savana10.tif")
Am_O01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_OtherVeg.tif")
Am_O10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Am_OtherVeg10.tif")

Af_F01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_Forest.tif")
Af_F10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_Forest10.tif")
Af_A01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_Agriculture.tif")
Af_A10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_Agriculture10.tif")
Af_S01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_Savana.tif")
Af_S10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_Savana10.tif")
Af_O01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_OtherVeg.tif")
Af_O10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/Af_OtherVeg10.tif")

As_F01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_Forest.tif")
As_F10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_Forest10.tif")
As_A01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_Agriculture.tif")
As_A10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_Agriculture10.tif")
As_S01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_Savana.tif")
As_S10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_Savana10.tif")
As_O01 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_OtherVeg.tif")
As_O10 <- raster("E:/Thesis/5DataLandCover/ModisLC/ClassesTiles/As_OtherVeg10.tif")

