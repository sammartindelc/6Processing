#Master thesis Samantha MCM 
#October 28, 2015
#Get data script: Script to download tiles.

#install library
library(rgdal)
library(raster)

#Download data
#download.hansen(tile, data.type = c("loss"), download.folder = getwd())

tilesH <- list(c('00N','010E'),c('00N','020E'),c('00N','030E'),c('00N','110E'),c('00N','120E'),
               c('00N','050W'),c('00N','060W'),c('00N','080W'),
               c('10N','000E'),c('10N','010E'),c('10N','020E'),c('10N','030E'),c('10N','110E'),c('10N','120E'),
               c('10N','010W'),c('10N','080W'),
               c('10S','020E'),c('10S','030E'),c('10S','120E'),
               c('10S','070W'),c('10S','080W'),
               c('20N','100E'), 
               c('20N','010W'),c('20N','020W'),c('20N','090W'),
               c('30N','070E'),c('30N','080E'),c('30N','090E'),c('30N','100E'))

for( j in 1:length(tilesH)){
  download.hansen(tile=tilesH[[j]],data.type=c("lossyear"),
                                              download.folder="C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/Hansen")
}

#download.modis(tile, data.year = c("2001"), download.folder = getwd())
tilesM <- list("RQ1516","PN1718","ML2122","ML1920","KJ1920","PN2728",
               "PN2930","PN3132","PN3738","PN3536","ML3536","ML3334",
               "KJ3536","RQ4344","RQ4546","RQ4748","PN4748",
               "PN4950","ML4950","ML5152","ML1718")

for( j in 1:length(tilesM)){
  download.modis(tile=tilesM[[j]],data.year=c("2001","2002","2003","2004","2005","2006","2007","2008","2009","2010"),
                 download.folder="C:/Users/Samantha/Documents/Samantha/Wageningen/ThesisLap/5DataLandCover/ModisLC")
}
 rm(tilesM, tilesH, j)
