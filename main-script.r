library("rstudioapi")
wd <- dirname(getActiveDocumentContext()$path)
setwd(wd) # automatically set wd

source("src/functions/load-libraries.r")
load_libraries(c("dplyr", "tidymodels"))

source("src/functions/save-external-data.r") 
dest_file <- save_external_data("data-split.rdata", 
                       "https://drive.google.com/file/d/1L428vOvo2xtpTVJZpeHRuqAl0LVpD-qL/view?usp=sharing")
