#Master thesis Samantha MCM 
#November 10, 2015
#dataStat script: Script histogram or XYfunction

#dataStat function, it takes level (Country or continent), name of level, function to calculate
#(hist or plot) and the variable used for the function (net_var or rel_var)

dataStat <- function(level="Country", name="Belize",func="hist", var="net_mig"){
  #Select the geographical level
  if (level=="Country"){
    data <- subset(demographic,demographic@data$Country==name)} 
    else if (level=="Continent") {
    data <- subset(demographic,demographic@data$Continent==name)
  }
  else {
    print ("Select other level")
  }
  
  #Select function to use, Histogram or XYplot
  if (func == "hist"){
    #Selects the variable 
    if (var=="net_mig"){
      jpeg(sprintf('output/hist_%s_%s.jpg', name, var))
      hist(data$net_mig, xlab="Net migration(persons)", main=sprintf('Histogram %s %s', name, var))
      dev.off()} 
    else if (var=="rel_mig"){
      jpeg(sprintf('output/hist_%s_%s.jpg', name, var))
      hist(data$rel_mig, xlab="Relative migration(%)",xlim=c(-100,100),breaks=c(seq(-400,100,25)),
           main=sprintf('Histogram %s %s', name, var))
      dev.off()} 
    else { print ("Select other variable") }
  }
  
  else if(func == "plot"){
    #Selects the variable 
    if (var=="net_mig"){
      jpeg(sprintf('output/plot_%s_%s.jpg', name, var))
      plot(data$dem_pop,data$net_mig, xlab="Total population", ylab="Net Migration",
           main=sprintf('Scatterplot %s %s', name, var))
      dev.off()} 
    else if (var=="rel_mig"){
      jpeg(sprintf('output/plot_%s_%s.jpg', name, var))
      plot(data$dem_pop,data$rel_mig, xlab="Total population", ylab="Relative Migration",
           main=sprintf('Scatterplot %s %s', name, var))
      dev.off()} 
    else { print ("Select other variable") }
  }
  else { print ("Select other function") 
  }
  
  print ("Done")
}