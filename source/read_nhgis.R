# read data from remote location

read_nhgis <- function(year, path){
  
  # check year
  if (year %in% c(1940,1950,1960,1970,1980) == FALSE){
    stop("Data for given year not available.")
  }
  
  # import data
  if (year == 1940){
    
    data_path <- "/nhgis/nhgis0008_shapefile_tl2008_us_tract_1940/US_tract_1940_conflated.shp"
    
  } else if (year == 1950){
    
    data_path <- "/nhgis/nhgis0007_shapefile_tl2008_us_tract_1950/US_tract_1950_conflated.shp"

  } else if (year == 1960){
    
    data_path <- "/nhgis/nhgis0007_shapefile_tl2008_us_tract_1960/US_tract_1960_conflated.shp"
    
  } else if (year == 1970){
    
    data_path <- "/nhgis/nhgis0007_shapefile_tl2008_us_tract_1970/US_tract_1970_conflated.shp"
    
  } else if (year == 1980){
    
    data_path <- "/nhgis/nhgis0007_shapefile_tl2008_us_tract_1980/US_tract_1980_conflated.shp"
    
  }
  
  # create new path
  new_path <- paste0(path,data_path)
  
  # read data in
  out <- sf::st_read(dsn = new_path, stringsAsFactors = FALSE)
  
  # return
  return(out)
  
}
