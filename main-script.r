library("rstudioapi")
setwd(dirname(getActiveDocumentContext()$path)) # automatically set wd
getwd()

source("src/functions/load_libraries.r")
load_libraries()