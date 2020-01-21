# create St. Louis shapefiles

# dependencies - packages
library(dplyr)
library(sf)
library(here)

# dependencies - functions
source("source/read_nhgis.R")
source("source/filter_nhgis.R")

# set path to source data
source_path <- "/Users/prenercg/Desktop/"

# read and subset data
## 1940
data40 <- read_nhgis(year = 1940, path = source_path) %>%
  filter_nhgis() %>%
  select(STATE, COUNTY, GISJOIN, AGGTRACT, TRACT, SUFFIX) %>%
  st_transform(., crs = 4269)
  
## 1950
data50 <- read_nhgis(year = 1950, path = source_path)

## 1960
data60 <- read_nhgis(year = 1960, path = source_path)

## 1970
data70 <- read_nhgis(year = 1970, path = source_path)

## 1980
data80 <- read_nhgis(year = 1980, path = source_path)

