#Master thesis Samantha MCM 
#December 02, 2015
#Extract values from change raster, create net change values

#Add libraries
library(xlsx)
library(rgdal)

#Convert pixels to km2
cover@data$ModisAbsForest <- cover@data$MchForest*0.25
cover@data$ModisAbsAgriculture <- cover@data$MchAgriculture*0.25
cover@data$ModisAbsUrban <- cover@data$MchUrban*0.25
cover@data$ModisAbsShrublands <- cover@data$MchShrublands*0.25
cover@data$ModisAbsSavana <- cover@data$MchSavana*0.25
cover@data$ModisAbsOtherVeg <- cover@data$MchOtherVeg*0.25
cover@data$HansenGain <- cover@data$HchGain*0.0009
cover@data$HansenLoss <- cover@data$HchLost*0.0009
cover@data$HansenAbsForest <- cover@data$HansenGain - cover@data$HansenLoss

#Delete columns with pixel values
cover@data$MchForest <- NULL
cover@data$MchAgriculture <- NULL
cover@data$MchUrban <- NULL
cover@data$MchShrublands <- NULL
cover@data$MchSavana <- NULL
cover@data$MchOtherVeg <- NULL
cover@data$HchLost <- NULL
cover@data$HchGain <- NULL

#Export as .xmls
write.xlsx(cover, "E:/Thesis/7Results/LandCover_WUR.xlsx")
#writeOGR(cover, dsn = '.', layer = 'demographic', driver = "ESRI Shapefile")

rm(H_AmLost,H_AfLost,H_AsLost,H_AmGain,H_AfGain,H_AsGain,
   M_AmForest,M_AmAgriculture,M_AmUrban,M_AmShrublands,M_AmSavana,M_AmOtherVeg,
   M_AfForest,M_AfAgriculture,M_AfUrban,M_AfShrublands,M_AfSavana,M_AfOtherVeg,
   M_AsForest,M_AsAgriculture,M_AsUrban,M_AsShrublands,M_AsSavana,M_AsOtherVeg,
   )

#Merge landcover and landArea
landcover <- merge(cover, landArea@data, "gvillcode")
