#M4 class
m4 <- subset(demographic,demographic$MountE==4,select=c("gvillcode","Country"))
m4Ecuador <- subset(m4,m4$Country=="Ecuador",select=c("gvillcode"))
m4Ecuador <- extract(ecuador,m4Ecuador,method="simple",buffer=7000,fun=mean,sp=T)
m4Ecuador <- extract(ecuador_s,m4Ecuador,method="simple",buffer=7000,fun=mean,sp=T)
names(m4Ecuador) <- c( "gvillcode","ElevationM","Slope")

m4Ethiopia <- subset(m4,m4$Country=="Ethiopia",select=c("gvillcode"))
m4Ethiopia <- extract(ethiopia,m4Ethiopia,method="simple",buffer=7000,fun=mean,sp=T)
m4Ethiopia <- extract(ethiopia_s,m4Ethiopia,method="simple",buffer=7000,fun=mean,sp=T)
names(m4Ethiopia) <- c( "gvillcode","ElevationM","Slope")

m4Nepal <- subset(m4,m4$Country=="Nepal",select=c("gvillcode"))
m4Nepal <- extract(nepal,m4Nepal,method="simple",buffer=7000,fun=mean,sp=T)
m4Nepal <- extract(nepal_s,m4Nepal,method="simple",buffer=7000,fun=mean,sp=T)
names(m4Nepal) <- c( "gvillcode","ElevationM","Slope")

m4Uganda  <- subset(m4,m4$Country=="Uganda",select=c("gvillcode"))
m4Uganda <- extract(uganda,m4Uganda,method="simple",buffer=7000,fun=mean,sp=T)
m4Uganda <- extract(uganda_s,m4Uganda,method="simple",buffer=7000,fun=mean,sp=T)
names(m4Uganda) <- c( "gvillcode","ElevationM","Slope")

m4 <- rbind(m4Ecuador,m4Ethiopia,m4Nepal,m4Uganda)

#M5class
m5 <- subset(demographic,demographic$MountE==5,select=c("gvillcode","Country"))
m5Ecuador <- subset(m5,m5$Country=="Ecuador",select=c("gvillcode"))
m5Ecuador <- extract(ecuador,m5Ecuador,method="simple",buffer=7000,fun=mean,sp=T)
m5Ecuador <- extract(ecuador_s,m5Ecuador,method="simple",buffer=7000,fun=mean,sp=T)
names(m5Ecuador) <- c( "gvillcode","ElevationM","Slope")

m5Malawi <- subset(m5,m5$Country=="Malawi",select=c("gvillcode"))
m5Malawi <- extract(malawi,m5Malawi,method="simple",buffer=7000,fun=mean,sp=T)
m5Malawi <- extract(malawi_s,m5Malawi,method="simple",buffer=7000,fun=mean,sp=T)
names(m5Malawi) <- c( "gvillcode","ElevationM","Slope")

m5Nepal <- subset(m5,m5$Country=="Nepal",select=c("gvillcode"))
m5Nepal <- extract(nepal,m5Nepal,method="simple",buffer=7000,fun=mean,sp=T)
m5Nepal <- extract(nepal_s,m5Nepal,method="simple",buffer=7000,fun=mean,sp=T)
names(m5Nepal) <- c( "gvillcode","ElevationM","Slope")

m5Uganda  <- subset(m5,m5$Country=="Uganda",select=c("gvillcode"))
m5Uganda <- extract(uganda,m5Uganda,method="simple",buffer=7000,fun=mean,sp=T)
m5Uganda <- extract(uganda_s,m5Uganda,method="simple",buffer=7000,fun=mean,sp=T)
names(m5Uganda ) <- c( "gvillcode","ElevationM","Slope")

m5Zambia  <- subset(m5,m5$Country=="Zambia",select=c("gvillcode"))
m5Zambia <- extract(zambia,m5Zambia,method="simple",buffer=7000,fun=mean,sp=T)
m5Zambia <- extract(zambia_s,m5Zambia,method="simple",buffer=7000,fun=mean,sp=T)
names(m5Zambia) <- c( "gvillcode","ElevationM","Slope")

m5  <- rbind(m5Ecuador,m5Malawi,m5Nepal,m5Uganda,m5Zambia)

#M6class
m6 <- subset(demographic,demographic$MountE==6,select=c("gvillcode","Country"))
m6Bangladesh <- subset(m6,m6$Country=="Bangladesh",select=c("gvillcode"))
m6Bangladesh <- extract(bangladesh,m6Bangladesh,method="simple",buffer=7000,fun=mean,sp=T)
m6Bangladesh <- extract(bangladesh_s,m6Bangladesh,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Bangladesh) <- c( "gvillcode","ElevationM","Slope")

m6BurkinaFaso <- subset(m6,m6$Country=="Burkina Faso",select=c("gvillcode"))
m6BurkinaFaso <- extract(burkina,m6BurkinaFaso,method="simple",buffer=7000,fun=mean,sp=T)
m6BurkinaFaso <- extract(burkina_s,m6BurkinaFaso,method="simple",buffer=7000,fun=mean,sp=T)
names(m6BurkinaFaso) <- c( "gvillcode","ElevationM","Slope")

m6China <- subset(m6,m6$Country=="China",select=c("gvillcode"))
m6China <- extract(china,m6China,method="simple",buffer=7000,fun=mean,sp=T)
m6China <- extract(china_s,m6China,method="simple",buffer=7000,fun=mean,sp=T)
names(m6China) <- c( "gvillcode","ElevationM","Slope")

m6DRC <- subset(m6,m6$Country=="DRC",select=c("gvillcode"))
m6DRC <- extract(drc,m6DRC,method="simple",buffer=7000,fun=mean,sp=T)
m6DRC <- extract(drc_s,m6DRC,method="simple",buffer=7000,fun=mean,sp=T)
names(m6DRC) <- c( "gvillcode","ElevationM","Slope")

m6Ecuador <- subset(m6,m6$Country=="Ecuador",select=c("gvillcode"))
m6Ecuador <- extract(ecuador,m6Ecuador,method="simple",buffer=7000,fun=mean,sp=T)
m6Ecuador <- extract(ecuador_s,m6Ecuador,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Ecuador) <- c( "gvillcode","ElevationM","Slope")

m6GhanaD <- subset(m6,m6$Country=="Ghana (Dry)",select=c("gvillcode"))
m6GhanaD <- extract(ghanadry,m6GhanaD,method="simple",buffer=7000,fun=mean,sp=T)
m6GhanaD <- extract(ghanadry_s,m6GhanaD,method="simple",buffer=7000,fun=mean,sp=T)
names(m6GhanaD) <- c( "gvillcode","ElevationM","Slope")

m6Indonesia <- subset(m6,m6$Country=="Indonesia",select=c("gvillcode"))
m6Indonesia <- extract(indonesia,m6Indonesia,method="simple",buffer=7000,fun=mean,sp=T)
m6Indonesia <- extract(indonesia_s,m6Indonesia,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Indonesia) <- c( "gvillcode","ElevationM","Slope")

m6Malawi <- subset(m6,m6$Country=="Malawi",select=c("gvillcode"))
m6Malawi <- extract(malawi,m6Malawi,method="simple",buffer=7000,fun=mean,sp=T)
m6Malawi <- extract(malawi_s,m6Malawi,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Malawi) <- c( "gvillcode","ElevationM","Slope")

m6Mozambique <- subset(m6,m6$Country=="Mozambique",select=c("gvillcode"))
m6Mozambique <- extract(mozambique,m6Mozambique,method="simple",buffer=7000,fun=mean,sp=T)
m6Mozambique <- extract(mozambique_s,m6Mozambique,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Mozambique) <- c( "gvillcode","ElevationM","Slope")

m6Nigeria <- subset(m6,m6$Country=="Nigeria",select=c("gvillcode"))
m6Nigeria <- extract(nigeria,m6Nigeria,method="simple",buffer=7000,fun=mean,sp=T)
m6Nigeria <- extract(nigeria_s,m6Nigeria,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Nigeria) <- c( "gvillcode","ElevationM","Slope")

m6Uganda  <- subset(m6,m6$Country=="Uganda",select=c("gvillcode"))
m6Uganda <- extract(uganda,m6Uganda,method="simple",buffer=7000,fun=mean,sp=T)
m6Uganda <- extract(uganda_s,m6Uganda,method="simple",buffer=7000,fun=mean,sp=T)
names(m6Uganda) <- c( "gvillcode","ElevationM","Slope")

m6  <- rbind(m6Bangladesh,m6BurkinaFaso,m6China,m6DRC,m6Ecuador,m6GhanaD,m6Indonesia,m6Malawi,m6Mozambique,m6Nigeria,m6Uganda)

#rm all
rm(ecuador,ethiopia,nepal,uganda,malawi,zambia,bangladesh,burkina,china,drc,mozambique,ghanadry,indonesia,nigeria)
rm(ecuador_s,ethiopia_s,nepal_s,uganda_s,malawi_s,zambia_s,bangladesh_s,burkina_s,china_s,drc_s,mozambique_s,ghanadry_s,indonesia_s,nigeria_s)
rm(m4Ecuador,m4Ethiopia,m4Nepal,m4Uganda)
rm(m5Ecuador,m5Malawi,m5Nepal,m5Uganda,m5Zambia)
rm(m6Bangladesh,m6BurkinaFaso,m6China,m6DRC,m6Ecuador,m6GhanaD,m6Indonesia,m6Malawi,m6Mozambique,m6Nigeria,m6Uganda)