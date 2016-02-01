#Master thesis Samantha MCM 
#November 10, 2015
#Migration statistics script
#Wordl in general
hist(demographic$net_mig, xlab="Net migration(persons)",xlim=c(-1600,1600),breaks=c(seq(-1600,1600,20)))
hist(demographic$rel_mig, xlab="Relative migration(%)",xlim=c(-100,100),breaks=c(seq(-400,100,25)))
plot(demographic$dem_pop,demographic$net_mig, xlab="Total population", ylab="Net Migration")
plot(demographic$dem_pop,demographic$rel_mig, xlab="Total population", ylab="Relative Migration")

#Per continent/country
name <- c("America","Asia","Africa")
# "Peru", "Guatemala", "Cameroon", no data
name <- c("Belize","Bolivia","Ecuador","Brazil",
          "Bangladesh","China","India","Indonesia","Nepal","Vietnam","Cambodia",
          "Ethiopia","Malawi","Mozambique","Senegal","Ghana (Dry)", "Ghana (Wet)","Uganda","Zambia",
          "Burkina Faso", "Nigeria", "DRC")
func <- c("plot")
val <- c("net_mig")

for( n in 1:length(name)){
  for (f in 1:length(func)){
    for (v in 1:length(val)){
      dataStat("Country",name[[n]],func[[f]],val[[v]]) #Change continent or country
    }
  }
}
rm(name, func, val, n, f, v)
