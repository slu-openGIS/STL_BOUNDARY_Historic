# subset to St. Louis City and St. Louis County

filter_nhgis <- function(.data){
  
  # subset to Missouri
  out <- dplyr::filter(.data, NHGISST == 290)
  
  # subset to St. Louis
  out <- dplyr::filter(out, NHGISCTY == 1890 | NHGISCTY == 5100)
  
  # return output
  return(out)
  
}