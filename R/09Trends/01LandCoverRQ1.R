#Master thesis Samantha MCM 
#January 26, 2016
#LandCover script: plot MODIS vs Hansen and agriculture, observing differences between datasets.

#Merge datasets
landcover <- merge(landcover, demoProcess@data, "gvillcode")

#Modis vs Hansen
plot(landcover$MForest5,landcover$HansenNetForest5,xlim=c(-20,20),ylim=c(-20,20),main="MODIS vs Hansen, 5km")
abline(h=0, v=0, col = "gray60")

#Modis forest vs agriculture
plot(landcover$MForest5,landcover$ModisNetAgriculture5,xlim=c(-20,20),ylim=c(-20,20),main="MODIS Forest vs Agriculture, 5km" )
abline(h=0, v=0, col = "gray60")

#Hansen forest vs Modis agriculture
plot(landcover$ModisNetAgriculture5,landcover$HansenNetForest5,xlim=c(-20,20),ylim=c(-20,20),main="MODIS Agriculture vs Hansen Forest, 5km")
abline(h=0, v=0, col = "gray60")

#Differences per country
plot(landcover$MForest,landcover$HansenNetForest,col=rainbow(25)[landcover$Country],
     main="MODIS Forest vs Agriculture, 5km",pch=16,xlim=c(-20,20),ylim=c(-20,20),
     xlab="MODIS Forest km2",ylab="HANSEN Forest km2")
abline(h=0, v=0, col = "gray60")
legend(x="topright", legend = levels(landcover$Country), col=rainbow(25), pch=16,ncol=3)

#Differences per demographic dynamic
plot(landcover$MForest,landcover$HansenNetForest,col=rainbow(6)[landcover$DemProcess],
     main="MODIS Forest vs Agriculture, 5km",pch=16,xlab="MODIS Forest km2",ylab="HANSEN Forest km2")
abline(h=0, v=0, col = "gray60")
legend(x="topright", legend = levels(landcover$DemProcess), col=rainbow(6), pch=16)

