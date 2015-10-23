#Master thesis Samantha MCM 
#October 22, 2015
#Histograms script: Script to create histograms of pupulation differnce per country usong a loop

#Histogram per Country diff in density

for (i in 1:25)
  {c <- country[i,1]
   jpeg(sprintf('results/histogram_%s.jpg', c))
   hist(demographic$as.name(variable)[demographic$Country==c], xlab="Density change",
        main=sprintf('Histogram %s', c))
   dev.off()
 
  print(sprintf('Histogram %s ready', c))
  }
