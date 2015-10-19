#Prepocessing module
#October 19, 2015.
#This file will add all .cvs files into memory and it will create a data frame containing 
#all relevant data using "gvillcode" as linking.

#install library
if(!require(gdata))
  install.packages("gdata")
library(gdata) 

#my_data <- read.csv("my_data.csv") Format to add data
v1_a_geo <- read.csv("data/V1/v1_a_geo.csv")
v1_b_dem <- read.csv("data/V1/v1_b_dem.csv")
v1_c_inf <- read.csv("data/V1/v1_c_inf.csv")
v1_d <- read.csv("data/V1/v1_d.csv")
v1_d1_land <- read.csv("data/V1/v1_d1_land.csv")
v1_d2_for <- read.csv("data/V1/v1_d2_for.csv")
v1_d3_mgt <- read.csv("data/V1/v1_d3_mgt.csv")
v1_e <- read.csv("data/V1/v1_e.csv")
v1_e_frb <- read.csv("data/V1/v1_e_frb.csv")
v1_f <- read.csv("data/V1/v1_f.csv")
v1_f_fi <- read.csv("data/V1/v1_f_fi.csv")
v1_g <- read.csv("data/V1/v1_g.csv")
v1_g_fug <- read.csv("data/V1/v1_g_fug.csv")
