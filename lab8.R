library(ggplot2)

setwd("C:/Users/User/Desktop/lab8-Visualizacion")


#segunda manera de cargar la data, yo cambie todas las | por , pero se puede hacer por cualquier manera cambiando sep.
data_2016 <- read.table("2016.txt", sep="|", header=TRUE, row.names=NULL)
data_2017 <- read.table("2017.txt", sep="|", header=TRUE, row.names=NULL)
data_2018 <- read.table("2018.txt", sep="|", header=TRUE, row.names=NULL)
data_2019 <- read.table("2019.txt", sep="|", header=TRUE, row.names=NULL)

datos <- rbind(data_2017, data_2018, data_2019, data_2016)

summary(datos)
