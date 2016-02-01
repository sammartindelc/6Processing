#Master thesis Samantha MCM 
#October 29, 2015
#Download script: Script with download functions

#Download.hansen function, it takes the tile number and product type, search for the
#url and save it in the desired directory
download.hansen <- function(tile, data.type = c("loss"), download.folder = getwd()) {
  hurl <- "http://commondatastorage.googleapis.com/earthenginepartners-hansen/GFC2013/Hansen_GFC2013"
  if (missing(tile)) 
    stop("Must define granule")
  for (i in 1:length(data.type)) {
    d <- paste(paste(hurl, paste(data.type[i], tile[1], tile[2], sep = "_"), sep = "_"), "tif", sep = ".")
    out <- paste(paste(download.folder, paste(data.type[i], tile[1], tile[2], sep = "_"), sep = "/"), "tif", 
                 sep = ".")
    try(download.file(d, out, mode="wb"))
  }
} 


#Download.modis function, it takes the tile number and product year, search for the
#url and save it in the desired directory
download.modis <- function(tile, data.year = c("2001"), download.folder = getwd()) {
  hurl <- "ftp://ftp.glcf.umd.edu/glcf/Global_LNDCVR/UMD_TILES/Version_5.1"
  if (missing(tile)) 
    stop("Must define granule")
  for (i in 1:length(data.year)) {
    d <- paste(hurl, paste(data.year[i], "01.01/MCD12Q1_V51_LC1", data.year[i], paste(tile,'MCD12Q1_V51_LC1',sep="/"), data.year[i], tile, "tif.gz", sep="."),sep="/")
    out <- paste(paste(download.folder, paste(data.year[i], tile, sep = "_"), sep = "/"), "tif.gz", sep = ".")
    try(download.file(d, out))
  }
} 