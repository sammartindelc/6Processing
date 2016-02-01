#Master thesis Samantha MCM 
#January 12, 2016
#Migration script: Script that divide villages according migration pattern with highier influcence.

#Add libraries
library(xlsx)
library(rgdal)

#6 Classes
growth <- subset(demographic,demographic$nat_pop>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
growth <- subset(growth,growth$net_mig>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
growth <- subset(growth,growth$diff_pop>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
growth$DemProcess <- "Growth"

shrink <- subset(demographic,demographic$nat_pop<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
shrink <- subset(shrink,shrink$net_mig<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
shrink <- subset(shrink,shrink$diff_pop<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
shrink$DemProcess <- "Shrink"

migration <- subset(demographic,demographic$nat_pop<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
migration <- subset(migration,migration$net_mig>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
natShr <- subset(migration,migration$diff_pop<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
migGwt <- subset(migration,migration$diff_pop>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
natShr$DemProcess <- "Natural Shrink"
migGwt$DemProcess <- "Migration Growth"

natural <- subset(demographic,demographic$nat_pop>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
natural <- subset(natural,natural$net_mig<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
migShr <- subset(natural,natural$diff_pop<0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
natGwt <- subset(natural,natural$diff_pop>=0,select=c("gvillcode","nat_pop","net_mig","diff_pop", "Country"))
migShr$DemProcess <- "Migration Shrink"
natGwt$DemProcess <- "Natural Growth"

#Second clusters
in_mig <- subset(demographic,demographic$net_mig>=0,select=c("gvillcode"))
in_mig$MigProcess <- "In"
out_mig <- subset(demographic,demographic$net_mig<0,select=c("gvillcode"))
out_mig$MigProcess <- "Out"

#Results
rm(demoProcess)
DemNet <- rbind(growth,shrink,migShr,migGwt,natShr,natGwt)
DemNet$DemProcess <- as.factor(DemNet$DemProcess)
MigNet <- rbind(in_mig,out_mig)
MigNet$MigProcess <- as.factor(MigNet$MigProcess)
demoProcess <- subset(demographic,demographic$Continent==demographic$Continent,select=c("gvillcode"))
demoProcess <- merge(demoProcess, DemNet@data, "gvillcode")
demoProcess <- merge(demoProcess, MigNet@data, "gvillcode")
#write.xlsx(demoProcess, "E:/Thesis/7Results/demProcess_WUR.xlsx")

#Remove all
rm(DemNet, growth,shrink,migration,migShr,migGwt,natural,natShr,natGwt,in_mig,out_mig,MigNet)

#Plot
plot(demoProcess$nat_pop,demoProcess$net_mig,xlab="Natural Population",col=rainbow(6)[demoProcess$DemProcess],
     ylab="Net migration",xlim=c(-250,500),ylim=c(-200,200),pch=16)
legend(x="topright", legend = levels(demoProcess$DemProcess), col=rainbow(6), pch=16)
plot(demoProcess$nat_pop,demoProcess$net_mig,xlab="Natural Population",col=rainbow(2)[demoProcess$MigProcess],
     ylab="Net migration",xlim=c(-250,500),ylim=c(-200,200),pch=16)
legend(x="topright", legend = levels(demoProcess$MigProcess), col=rainbow(2), pch=16)