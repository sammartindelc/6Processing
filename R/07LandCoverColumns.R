#Remove unnecessary columns
landcover$ModisAbsShrublands <- NULL
landcover$ModisAbsUrban <- NULL
landcover$HansenGain <- NULL
landcover$HansenLoss <- NULL

#Merge Forest and Savana MODIS Land Cover Types
NAs <- subset(landcover,is.na(landcover$ModisAbsForest),select=c("gvillcode","ModisAbsSavana","MSavana01","MSavana10","ModisAbsOtherVeg","MOtherVeg01","MOtherVeg10"))
OV <- subset(NAs,is.na(NAs$ModisAbsSavana),select=c("gvillcode","ModisAbsOtherVeg","MOtherVeg01","MOtherVeg10"))
NAs <- subset(NAs,!is.na(NAs$ModisAbsSavana),select=c("gvillcode","ModisAbsSavana","MSavana01","MSavana10"))
names(OV) <- c("gvillcode","ModisAbsForestVeg","ModisForestVeg01","ModisForestVeg10")
names(NAs) <- c("gvillcode","ModisAbsForestVeg","ModisForestVeg01","ModisForestVeg10")
Ft <- subset(landcover,!is.na(landcover$ModisAbsForest),select=c("gvillcode","ModisAbsForest","MForest01","MForest10"))
names(Ft) <- c("gvillcode","ModisAbsForestVeg","ModisForestVeg01","ModisForestVeg10")
ModisAbsForestVeg <- rbind(NAs,Ft,OV)
landcover <- merge(landcover, ModisAbsForestVeg@data, "gvillcode")   
#Remove   
rm(NAs,Ft,ModisAbsForestVeg,OV)

#Calculate Relative changes
landcover$ModisRelForest <- (landcover$ModisAbsForestVeg/landcover$ModisForestVeg01)*100
landcover$ModisRelAgriculture <- (landcover$ModisAbsAgriculture/landcover$MAgriculture01)*100

#Remove unnecessary data
landcover$MForest01 <- NULL
landcover$MForest10 <- NULL
landcover$ModisAbsForest <- NULL
landcover$MSavana01 <- NULL
landcover$MSavana10 <- NULL
landcover$ModisAbsSavana <- NULL
landcover$MOtherVeg01 <- NULL
landcover$MOtherVeg10 <- NULL
landcover$ModisAbsOtherVeg <- NULL

# landcover$MAgriculture01 <- NULL
# landcover$MAgriculture10 <- NULL
# landcover$ModisForestV01 <- NULL
# landcover$ModisForestV10 <- NULL