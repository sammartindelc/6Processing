#Master thesis Samantha MCM 
#December 02, 2015
#NetChangeFunction: Extract values from change raster, create net change values per land cover use

#Call libraries
library(raster)
rm(corver)
corver <- subset(demographic,demographic$Continent==demographic$Continent,select=c("gvillcode"))

#subset demographic data according continent
america <- subset(demographic,demographic$Continent=="America",select=c("gvillcode","radiusM"))
africa <- subset(demographic,demographic$Continent=="Africa",select=c("gvillcode","radiusM"))
asia <- subset(demographic,demographic$Continent=="Asia",select=c("gvillcode","radiusM"))

#Hansen Data
#Select data from Hansen dataset, change names to create one matrix per land cover and add results to demographic data
america <- extract(H_AmLost,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","HchLost")
america <- extract(H_AmGain,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","HchLost","HchGain")

africa <- extract(H_AfLost,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","HchLost")
africa <- extract(H_AfGain,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","HchLost","HchGain")

asia <- extract(H_AsLost,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","HchLost")    
asia <- extract(H_AsGain,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","HchLost","HchGain")

HchNet <- rbind(america,asia,africa)
HchNet$radiusM <- NULL
corver <- merge(corver, HchNet@data, "gvillcode")
rm(america,asia,africa,HchNet)

#subset demographic data according continent
america <- subset(demographic,demographic$Continent=="America",select=c("gvillcode","radiusM"))
africa <- subset(demographic,demographic$Continent=="Africa",select=c("gvillcode","radiusM"))
asia <- subset(demographic,demographic$Continent=="Asia",select=c("gvillcode","radiusM"))

#MODIS Data
#Select data from Modis dataset, change names to create one matrix per land cover and add results to demographic data
america <- extract(M_AmForest,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","MchForest")
america <- extract(M_AmAgriculture,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","MchForest","MchAgriculture")
america <- extract(M_AmUrban,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban")
america <- extract(M_AmShrublands,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands")
america <- extract(M_AmSavana,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands","MchSavana")
america <- extract(M_AmOtherVeg,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands","MchSavana","MchOtherVeg")

africa <- extract(M_AfForest,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","MchForest")
africa <- extract(M_AfAgriculture,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","MchForest","MchAgriculture")
africa <- extract(M_AfUrban,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban")
africa <- extract(M_AfShrublands,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands")
africa <- extract(M_AfSavana,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands","MchSavana")
africa <- extract(M_AfOtherVeg,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands","MchSavana","MchOtherVeg")

asia <- extract(M_AsForest,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","MchForest")
asia <- extract(M_AsAgriculture,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","MchForest","MchAgriculture")
asia <- extract(M_AsUrban,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban")
asia <- extract(M_AsShrublands,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands")
asia <- extract(M_AsSavana,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands","MchSavana")
asia <- extract(M_AsOtherVeg,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","MchForest","MchAgriculture","MchUrban","MchShrublands","MchSavana","MchOtherVeg")

MchNet <- rbind(america,asia,africa)
MchNet$radiusM <- NULL
corver <- merge(corver, MchNet@data, "gvillcode")
rm(america,asia,africa,MchNet)
