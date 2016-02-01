#Master thesis Samantha MCM 
#October 30, 2015
#Call rasters script: depending on dataset

#Load library
library(raster)
library(rgdal)

#Get Hansen data
H_AmLost <- raster("E:/Thesis/5DataLandCover/Hansen/Continents/Loss/HLoss_Am.tif")
H_AfLost <- raster("E:/Thesis/5DataLandCover/Hansen/Continents/Loss/HLoss_Af.tif")
H_AfLost <- raster("E:/Thesis/5DataLandCover/Hansen/Continents/Loss/HLoss_As.tif")

H_AmGain <- raster("E:/Thesis/5DataLandCover/Hansen/Continents/Gain/HGain_Am.tif")
H_AfGain <- raster("E:/Thesis/5DataLandCover/Hansen/Continents/Gain/HGain_Af.tif")
H_AsGain <- raster("E:/Thesis/5DataLandCover/Hansen/Continents/Gain/HGain_As.tif")

#Get Modis data
M_AmForest <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AmChangeForest.tif")
M_AmAgriculture <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AmChangeAgriculture.tif")
M_AmUrban <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AmChangeUrban.tif")
M_AmShrublands <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AmChangeShrublands.tif")
M_AmSavana <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AmChangeSavana.tif")
M_AmOtherVeg <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AmChangeOtherVeg.tif")

M_AfForest <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AfChangeForest.tif")
M_AfAgriculture <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AfChangeAgriculture.tif")
M_AfUrban <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AfChangeUrban.tif")
M_AfShrublands <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AfChangeShrublands.tif")
M_AfSavana <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AfChangeSavana.tif")
M_AfOtherVeg <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AfChangeOtherVeg.tif")

M_AsForest <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AsChangeForest.tif")
M_AsAgriculture <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AsChangeAgriculture.tif")
M_AsUrban <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AsChangeUrban.tif")
M_AsShrublands  <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AsChangeShrublands.tif")
M_AsSavana <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AsChangeSavana.tif")
M_AsOtherVeg <- raster("E:/Thesis/5DataLandCover/ModisLC/ChangeContinentTiles/AsChangeOtherVeg.tif")
