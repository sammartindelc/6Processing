m0 <- subset(demographic,demographic$MountE==0,select=c("gvillcode"))
m0$MountCond <- F
m3 <- subset(demographic,demographic$MountE==3,select=c("gvillcode"))
m3$MountCond <- T
m4$MountCond <- F
m4$MountCond[m4$Slope >= 2] <- T
m5$MountCond <- F
m5$MountCond[m5$Slope>=5 | m5$ElevationM>300] <- T
m6$MountCond <- F
m6$MountCond[m6$ElevationM>300] <- T

mount <- rbind(m4,m5,m6)
mount$ElevationM <- NULL
mount$Slope <- NULL
mount <- rbind(m0,m3,mount)

demographic <- merge(demographic, mount@data, "gvillcode")
rm(m4,m5,m6,m0,m3,mount)

library(xlsx)
write.xlsx(demographic, paste(getwd(),"data/demographic.xlsx",sep="/"))
