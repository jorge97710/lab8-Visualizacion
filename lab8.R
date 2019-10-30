

setwd("C:/Users/User/Desktop/lab8-Visualizacion")
l <- read.table("2016.txt", sep ="|")

#segunda manera de cargar la data, yo cambie todas las | por , pero se puede hacer por cualquier manera cambiando sep.
data <- read.table("web_imp_08012017.txt", sep=",", header=TRUE, , row.names=NULL)
