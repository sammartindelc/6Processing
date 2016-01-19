#Master thesis Samantha MCM 
#December 02, 2015
#Extract values from change raster, create net change values

#Add libraries
library(xlsx)
library(rgdal)

#Convert pixels to km2
landcover@data$ModisNetForest <- landcover@data$MchForest*0.25
landcover@data$ModisNetAgriculture <- landcover@data$MchAgriculture*0.25
landcover@data$ModisNetUrban <- landcover@data$MchUrban*0.25
landcover@data$ModisNetShrublands <- landcover@data$MchShrublands*0.25
landcover@data$ModisNetSavana <- landcover@data$MchSavana*0.25
landcover@data$ModisNetOtherVeg <- landcover@data$MchOtherVeg*0.25
landcover@data$HansenGain <- landcover@data$HchGain*0.0009
landcover@data$HansenLoss <- landcover@data$HchLost*0.0009

#Delete columns with pixel values
landcover@data$MchForest <- NULL
landcover@data$MchAgriculture <- NULL
landcover@data$MchUrban <- NULL
landcover@data$MchShrublands <- NULL
landcover@data$MchSavana <- NULL
landcover@data$MchOtherVeg <- NULL
landcover@data$HchLost <- NULL
landcover@data$HchGain <- NULL

names(landcover)
names(landcover)<-c("gvillcode","ModisNetForest5","ModisNetAgriculture5","ModisNetUrban5",
                    "ModisNetShrublands5","ModisNetSavana5","ModisNetOtherVeg5","HansenGain5",
                    "HansenLoss5",
                    "ModisNetForest7","ModisNetAgriculture7","ModisNetUrban7",
                    "ModisNetShrublands7","ModisNetSavana7","ModisNetOtherVeg7","HansenGain7",
                    "HansenLoss7")
names(landcover)<-c("gvillcode","ModisNetForest5","ModisNetAgriculture5","ModisNetUrban5",
                    "ModisNetShrublands5","ModisNetSavana5","ModisNetOtherVeg5","HansenGain5",
                    "HansenLoss5",
                    "ModisNetForest7","ModisNetAgriculture7","ModisNetUrban7",
                    "ModisNetShrublands7","ModisNetSavana7","ModisNetOtherVeg7","HansenGain7",
                    "HansenLoss7",
                    "ModisNetForest10","ModisNetAgriculture10","ModisNetUrban10",
                    "ModisNetShrublands10","ModisNetSavana10","ModisNetOtherVeg10","HansenGain10",
                    "HansenLoss10")
#Export as .xmls
write.xlsx(landcover, "E:/Thesis/5DataLandCover/xlsx/Dem5km.xlsx")
writeOGR(demographic, dsn = '.', layer = 'demographic', driver = "ESRI Shapefile")