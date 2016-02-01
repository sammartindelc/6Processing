#Master thesis Samantha MCM 
#January, 2016
#AreasClassesMatrix: Extract values from classes raster, create total area values per land cover use

#Call libraries
library(raster)
rm(landArea)
landArea <- subset(demographic,demographic$Continent==demographic$Continent,select=c("gvillcode"))

#subset demographic data according continent
america <- subset(demographic,demographic$Continent=="America",select=c("gvillcode","radiusM"))
africa <- subset(demographic,demographic$Continent=="Africa",select=c("gvillcode","radiusM"))
asia <- subset(demographic,demographic$Continent=="Asia",select=c("gvillcode","radiusM"))

#MODIS Data
#Select data from Modis dataset, change names to create one matrix per land cover and add results to demographic data
america <- extract(Am_F01,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01")
america <- extract(Am_F10,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10")
america <- extract(Am_A01,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10","A01")
america <- extract(Am_A10,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10","A01","A10")
america <- extract(Am_S01,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01")
america <- extract(Am_S10,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10")
america <- extract(Am_O01,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10","O01")
america <- extract(Am_O10,america,method="simple",buffer=america$radiusM,fun=sum,sp=T)
names(america)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10","O01","O10")

africa <- extract(Af_F01,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01")
africa <- extract(Af_F10,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10")
africa <- extract(Af_A01,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10","A01")
africa <- extract(Af_A10,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10","A01","A10")
africa <- extract(Af_S01,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01")
africa <- extract(Af_S10,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10")
africa <- extract(Af_O01,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10","O01")
africa <- extract(Af_O10,africa,method="simple",buffer=africa$radiusM,fun=sum,sp=T)
names(africa)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10","O01","O10")

asia <- extract(As_F01,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01")
asia <- extract(As_F10,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10")
asia <- extract(As_A01,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10","A01")
asia <- extract(As_A10,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10","A01","A10")
asia <- extract(As_S01,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01")
asia <- extract(As_S10,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10")
asia <- extract(As_O01,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10","O01")
asia <- extract(As_O10,asia,method="simple",buffer=asia$radiusM,fun=sum,sp=T)
names(asia)<-c("gvillcode","radiusM","F01","F10","A01","A10","S01","S10","O01","O10")

MAreas <- rbind(america,asia,africa)
MAreas$radiusM <- NULL
landArea <- merge(landArea, MAreas@data, "gvillcode")
rm(america,asia,africa,MAreas)
