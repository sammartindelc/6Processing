#Master thesis Samantha MCM 
#October 19, 2015.
#Add data scriptThis: file will add all .cvs files into memory and it will create a data frame containing 
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
# v1_d <- read.csv("data/V1/v1_d.csv")
# v1_d1_land <- read.csv("data/V1/v1_d1_land.csv")
# v1_d2_for <- read.csv("data/V1/v1_d2_for.csv")
# v1_f_fi <- read.csv("data/V1/v1_f_fi.csv")

country <- read.table("data/countries.txt", header = FALSE, sep="\n")

wur_data <- read.xlsx("data/wur_data.xlsx",sheetIndex=1)

demographic <- merge(wur_data, v1_a_geo[c("gvillcode", "offyr")], "gvillcode")
demographic <- merge(demographic, v1_b_dem[c("gvillcode","dem_yrvill",
                                             "dem_pop","dem_pop10","dem_in","dem_out")], by="gvillcode")
head(demographic)
summary(demographic)
