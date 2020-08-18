library(magrittr);library(jsonlite)


input <- "data-raw/letters.xlsx"
output <- jsonlite::read_json("datapackage.json")$resources[[1]]$path

x <- read_json("datapackage.json")

result <- input %>% 
  read() %>% 


readr::write_excel_csv(result, path = output)