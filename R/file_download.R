pull_sheets <- function(x) {
  assertthat::is.readable(path = '.httr-oauth') %>% 
    assertthat::assert_that(., msg = "Authorization file is missing.")
  
  sheet <- googlesheets::gs_title('Neotoma Analysis.xlsx')
  
  type_stats <- try(googlesheets::gs_read(sheet, ws = x))
  return(type_stats)
}