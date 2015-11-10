#Master thesis Samantha MCM 
#October 19, 2015.
#Add data script: This file will add all .cvs files into memory and it will create a data frame containing 
#all relevant data using "gvillcode" as linking.

#install library
if(!require(gdata))
  install.packages("gdata")
library(gdata) 

if(!require(xlsx))
  install.packages("xlsx")
library(xlsx) 

#my_data <- read.csv("my_data.csv") Format to add data
v1_a_geo <- read.csv("data/V1/v1_a_geo.csv")
v1_b_dem <- read.csv("data/V1/v1_b_dem.csv")

wur_data <- read.xlsx("data/wur_data.xlsx",sheetIndex=1)

demographic <- merge(wur_data, v1_a_geo[c("gvillcode", "offyr")], "gvillcode")
demographic <- merge(demographic, v1_b_dem[c("gvillcode","dem_yrvill",
                                             "dem_pop","dem_pop10","dem_in","dem_out")], by="gvillcode")
#Get data with Dem_in information
demographic$dem_in[demographic$dem_in <=-9] <- NA
demographic$dem_out[demographic$dem_out <=-9]<-NA
demographic$dem_pop[demographic$dem_pop <=-9]<-NA
demographic$dem_pop10[demographic$dem_pop10 <=-9]<-NA
demographic <- demographic[complete.cases(demographic),]
