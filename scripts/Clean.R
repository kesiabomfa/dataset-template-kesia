library(magrittr);library(jsonlite)


input <- "data-raw/letters.csv"
output <- jsonlite::read_json("datapackage.json")$resources[[1]]$path

read_json("datapackage.json")

result <- input %>% 
  read() %>% 
  recode() %>% 
  enrich()

data.table::fwrite(result, file = output, sep = ";", dec = ",", bom = TRUE, na = "NA")