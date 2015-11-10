#Master thesis Samantha MCM 
#November 10, 2015
#Migration statistics script
names(demographic)
hist(demographic$net_mig, xlab="Net migration(persons)",xlim=c(-1600,1600),breaks=c(seq(-1600,1600,20)))
hist(demographic$rel_mig, xlab="Relative migration(%)",xlim=c(-100,100),breaks=c(seq(-400,100,25)))

plot(demographic$dem_pop,demographic$net_mig, xlab="Total population", ylab="Net Migration")
plot(demographic$dem_pop,demographic$rel_mig, xlab="Total population", ylab="Relative Migration")

dataStat("Country","Brazil","hist","rel_mig")
dataStat("Country","Brazil","plot","rel_mig")
