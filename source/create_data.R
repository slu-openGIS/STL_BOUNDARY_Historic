# create St. Louis shapefiles

# depenencies
## packages
library(dplyr)
library(sf)
library(here)

## functions
source("source/read_nhgis.R")
source("source/filter_nhgis.R")

# set path to source data
source_path <- "/Users/prenercg/Desktop/"

# 1940
## read and subset data
data40 <- read_nhgis(year = 1940, path = source_path) %>%
  filter_nhgis() %>%
  select(STATE, COUNTY, GISJOIN, AGGTRACT, TRACT, SUFFIX) %>%
  st_transform(., crs = 4269)

## write data
st_write(data40, here("data", "STL_BOUNDARY_1940_tracts.geojson"), delete_dsn = TRUE)

## clean-up
rm(data40)

# 1950
## read and subset data
data50 <- read_nhgis(year = 1950, path = source_path) %>%
  filter_nhgis() %>%
  mutate(STATE = "29") %>%
  select(STATE, COUNTY, GISJOIN, AGGTRACT, TRACT, SUFFIX) %>%
  st_transform(., crs = 4269)

## write data
st_write(data50, here("data", "STL_BOUNDARY_1950_tracts.geojson"), delete_dsn = TRUE)

## clean-up
rm(data50)

# 1960
## read and subset data
data60 <- read_nhgis(year = 1960, path = source_path) %>%
  filter_nhgis() %>%
  select(STATE, COUNTY, GISJOIN, AGGTRACT, TRACT, SUFFIX) %>%
  st_transform(., crs = 4269)

## write data
st_write(data60, here("data", "STL_BOUNDARY_1960_tracts.geojson"), delete_dsn = TRUE)

## clean-up
rm(data60)

# 1970
## read and subset data
data70 <- read_nhgis(year = 1970, path = source_path) %>%
  filter_nhgis() %>%
  mutate(STATE = "29") %>%
  select(STATE, COUNTY, GISJOIN, AGGTRACT, TRACT, SUFFIX) %>%
  st_transform(., crs = 4269)

## write data
st_write(data70, here("data", "STL_BOUNDARY_1970_tracts.geojson"), delete_dsn = TRUE)

## clean-up
rm(data70)

# 1980
## read and subset data
data80 <- read_nhgis(year = 1980, path = source_path) %>%
  filter_nhgis() %>%
  mutate(STATE = "29") %>%
  select(STATE, COUNTY, GISJOIN, AGGTRACT, TRACT, SUFFIX) %>%
  st_transform(., crs = 4269)

## write data
st_write(data80, here("data", "STL_BOUNDARY_1980_tracts.geojson"), delete_dsn = TRUE)

## clean-up
rm(data80)
