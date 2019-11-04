library(ggplot2)
library(ggplot2)
library(ggpubr)

setwd("C:/Users/User/Desktop/lab8-Visualizacion")


#segunda manera de cargar la data, yo cambie todas las | por , pero se puede hacer por cualquier manera cambiando sep.
data_2016 <- read.table("2016.txt", sep="|", header=TRUE, row.names=NULL)
data_2017 <- read.table("2017.txt", sep="|", header=TRUE, row.names=NULL)
data_2018 <- read.table("2018.txt", sep="|", header=TRUE, row.names=NULL)
data_2019 <- read.table("2019.txt", sep="|", header=TRUE, row.names=NULL)

datos <- rbind(data_2017, data_2018, data_2019, data_2016)

summary(datos)

hist(data_2016$Fecha.de.la.Poliza)
hist(data_2016$Fecha.de.la.Poliza,main = "Partida de Aranceleria",xlab= "Partida", ylab="Frecuencia" )
hist(datos$Partida.Arancelaria,main = "Modelo del Vehiculo",xlab= "año de modelo", ylab="Frecuencia" ,xlim=c(1980,2020))
hist(datos$Linea ,main = "Centimetros Cubicos",xlab= "centrimetros cubicos", ylab="Frecuencia" ,xlim=c(0,11000))
hist(datos$Asientos ,main = "numero de puertas",xlab= "numero de puertas", ylab="Frecuencia" ,xlim=c(0,7), ylim=c(0,100000))
hist(datos$Tonelaje ,main = "Tonelaje",xlab= "cantidad de tonelaje", ylab="Frecuencia" ,xlim=c(0,1900000), ylim=c(0,100000))
hist(datos$Valor.CIF ,main = "Impuesto",xlab= "cantidad de impuesto", ylab="Frecuencia" ,xlim=c(0,199900), ylim=c(0,100000))
mytable <- table(datos$row.names)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Pais de Proveniencia") 

counts <- table(datos$row.names)
barplot(counts, main="Pais de Proveniencia", 
   xlab="Pais de Proveniencia", col=brewer.pal(n = 3, name = "RdBu"))  

mytable <- table(datos$Pais.de.Proveniencia)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Aduana de ingreso")

counts <- table(datos$Pais.de.Proveniencia)
barplot(counts, main="Aduana de ingreso", 
   xlab="Aduana de ingreso", col=brewer.pal(n = 3, name = "RdBu"))  

mytable <- table(datos$Modelo.del.Vehiculo)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Marca") 

mytable <- table(datos$Centimetros.Cubicos)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Distintivo") 

mytable <- table(datos$Distintivo)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Tipo de vehiculo") 

mytable <- table(datos$Tipo.de.Vehiculo)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Tipo de importador") 

mytable <- table(datos$Tipo.de.Importador)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Tipo de Combustible") 
