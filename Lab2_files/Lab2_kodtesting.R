installed.packages('mosaic')
getwd()
library(mosaic)
setwd("/Users/minhui/Documents/SDA1/Lab2_files")
library(openxlsx)
titanic = read.xlsx('Chapter_3.xlsx', sheet = "Titanic")
head(titanic)

