#Master thesis Samantha MCM 
#December 02, 2015
#Extract values from change raster, create net change values

#Add libraries
library(xlsx)
library(rgdal)

#Convert pixels to km2
landArea@data$MForest01 <- landArea@data$F01*0.25
landArea@data$MForest10 <- landArea@data$F10*0.25
landArea@data$MAgriculture01 <- landArea@data$A01*0.25
landArea@data$MAgriculture10 <- landArea@data$A10*0.25
landArea@data$MSavana01 <- landArea@data$S01*0.25
landArea@data$MSavana10 <- landArea@data$S10*0.25
landArea@data$MOtherVeg01 <- landArea@data$O01*0.25
landArea@data$MOtherVeg10 <- landArea@data$O10*0.25

#Delete columns with pixel values
landArea@data$F01 <- NULL
landArea@data$F10 <- NULL
landArea@data$A01 <- NULL
landArea@data$A10 <- NULL
landArea@data$S01 <- NULL
landArea@data$S10 <- NULL
landArea@data$O01 <- NULL
landArea@data$O10 <- NULL

#Export as .xmls
write.xlsx(landArea, "E:/Thesis/7Results/landArea_WUR.xlsx")
#writeOGR(landArea, dsn = '.', layer = 'demographic', driver = "ESRI Shapefile")

#Remove rasters
rm(Af_F01,Af_F10,Af_A01,Af_A10,Af_S01,Af_S10,Af_O01,Af_O10,
   Am_F01,Am_F10,Am_A01,Am_A10,Am_S01,Am_S10,Am_O01,Am_O10,
   As_F01,As_F10,As_A01,As_A10,As_S01,As_S10,As_O01,As_O10,
)