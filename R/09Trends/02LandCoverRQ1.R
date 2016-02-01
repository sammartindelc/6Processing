#Master thesis Samantha MCM 
#January 26, 2016
#LandCover2 script: Evaluate differences in M and H per variable

#MODIS Forest Absolute
summary(landcover$ModisAbsForestVeg)
quantile(landcover$ModisAbsForestVeg,na.rm=T)
sd(landcover$ModisAbsForestVeg,na.rm=T)
hist(landcover$ModisAbsForestVeg,breaks=c(seq(-60,30,1)),xlim=c(-60,20),xlab="MODIS Forest Change in km2")
subset(landcover,landcover$ModisAbsForestVeg>=0)
subset(landcover,landcover$ModisAbsForestVeg<0)
#MODIS Forest Relative
summary(landcover$ModisRelForest)
quantile(landcover$ModisRelForest,na.rm=T)
sd(landcover$ModisRelForest,na.rm=T)
hist(landcover$ModisRelForest,breaks=c(seq(-100,800,3)),xlim=c(-100,110),xlab="MODIS Forest Relative Change in %")

#MODIS Agriculture Absolute
summary(landcover$ModisAbsAgriculture)
quantile(landcover$ModisAbsAgriculture,na.rm=T)
sd(landcover$ModisAbsAgriculture,na.rm=T)
hist(landcover$ModisAbsAgriculture,breaks=c(seq(-20,70,1)),xlim=c(-20,60),xlab="MODIS Agriculture Change in km2")
subset(landcover,landcover$ModisAbsAgriculture>=0)
subset(landcover,landcover$ModisAbsAgriculture<0)
#MODIS Agriculture Relative
summary(landcover$ModisRelAgriculture)
quantile(landcover$ModisRelAgriculture,na.rm=T)
sd(landcover$ModisRelAgriculture,na.rm=T)
hist(landcover$ModisRelAgriculture,breaks=c(seq(-100,4300,4)),xlim=c(-100,250),xlab="MODIS Agriculture Relative Change in %")

#HANSEN Forest
summary(landcover$HansenAbsForest)
quantile(landcover$HansenAbsForest,na.rm=T)
sd(landcover$HansenAbsForest,na.rm=T)
hist(landcover$HansenAbsForest,breaks=c(seq(-20,5,1)),xlim=c(-20,5),xlab="HANSEN Forest Change in km2")
subset(landcover,landcover$HansenAbsForest>=0)
subset(landcover,landcover$HansenAbsForest<0)