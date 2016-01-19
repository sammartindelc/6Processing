#Master thesis Samantha MCM 
#October 30, 2015
#Function to mosaic: take the path where data is storage and an output name for mosaic raster

#load libraries
library(raster)

#Define function
bricks_landCover <- function(path=getwd(),outputName){ #argument path takes path to source data as a string
  #find number of input_data files
  length_data <- length(list.files(path = path, pattern=glob2rx('*.tif'), full.names = T))
  
  #List, rasterize, create a mosaic and export to disk
  input_rasters <- lapply(list.files(path = path, pattern=glob2rx('*.tif'), full.names = T), brick)
  input_rasters$fun <- max
  combined <- do.call(mosaic, input_rasters)
  writeRaster(combined, filename = paste(path,paste(outputName,'tif',sep='.'),sep='/'), format = "GTiff", overwrite = T)
  rm(combined)
  print  ("Mosaic raster has been saved to the disk")
}