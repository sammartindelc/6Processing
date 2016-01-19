#Master thesis Samantha MCM 
#January 12, 2016
#Migration script: Script that divide villages according migration pattern with highier influcence.
#Look for real limits, outliers
hist(demographic$nat_pop,breaks=c(seq(-400,5500,50)),xlim=c(-400,1000))
hist(demographic$net_mig,breaks=c(seq(-1500,1600,50)),xlim=c(-300,700))

#Plot to identify classes
plot(demographic$nat_pop,demographic$net_mig,xlab="Natural Population",ylab="Net migration",xlim=c(-250,800),ylim=c(-200,200))
abline(h=0, v=0, col = "gray60")

#Subset classes
growth <- subset(demographic,demographic$nat_pop>=0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country", "Country"))
growth <- subset(growth,growth$net_mig>=0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
growth$DemProcess <- "Growth"

shrink <- subset(demographic,demographic$nat_pop<0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
shrink <- subset(shrink,shrink$net_mig<0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
shrink$DemProcess <- "Shrink"

migration <- subset(demographic,demographic$nat_pop<0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
migration <- subset(migration,migration$net_mig>=0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
migration$DemProcess <- "Migration"

natural <- subset(demographic,demographic$nat_pop>=0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
natural <- subset(natural,natural$net_mig<0,select=c("gvillcode","nat_pop","net_mig","Country_num", "Country"))
natural$DemProcess <- "Natural"

in_mig <- subset(demographic,demographic$net_mig>=0,select=c("gvillcode","net_mig","Country_num", "Country"))
in_mig$MigProcess <- "In"
out_mig <- subset(demographic,demographic$net_mig<0,select=c("gvillcode","net_mig","Country_num", "Country"))
out_mig$MigProcess <- "Out"

#Results
DemNet <- rbind(growth,shrink,migration,natural)
MigNet <- rbind(in_mig,out_mig)
demoProcess <- subset(demographic,demographic$Continent==demographic$Continent,select=c("gvillcode"))
demoProcess <- merge(demoProcess, DemNet@data, "gvillcode")
demoProcess <- merge(demoProcess, MigNet@data, "gvillcode")

rm(DemNet, growth,shrink,migration,natural,in_mig,out_mig,MigNet)

##Extraaa
summary(growth) #157 villages Belize, Bolivia, Ecuador, Brazil, Bangladesh, China, India,
                #Indonesia, Nepal, Vietnam, Cambodia, Ethiopia, Malawi, Mozambique, Senegal,
                #Ghana Wet, Ghana Dry, Uganda, Zambia, Burkina Faso, DRC, Nigeria
summary(shrink) #8 villages, Ethiopia,DRC, Belize, Burkina Faso, Ecuador, Ghana Dry
summary(migration) #16 villages, Cambodia, Ehtiopia, Nepal, Belize, Bolivia, Malawi,Uganda
summary(natural) # 73 villages, Malawi, Ecuador,Ethiopia,Burkina Faso, Ghana Wet, Bolivia, Belize,Brazil,
                 # Bangladesh, China, Indonesia, Nepal,Ghana Dry, Uganda, Zambia, Nigeria
summary(in_mig)#Belize, Bolivia, Ecuador, Brazil, Bangladesh, China, India, Indonesia, Nepal, Vietnam, Cambodia, Ethiopia, Malawi, 
              #Mozambique, Senegal, GhanaWet, GhanaDry, Uganda, Zambia, BurkinaFaso, DRC, Nigeria
summary(out_mig)