install.packages(c("FactoMineR","factoextra","readxl","dplyr","ggplot2","gplots"))

library("FactoMineR")
library("factoextra")
library("dplyr")
library("ggplot2")
library("gplots")
library("readxl")
library("readstata13")

#Lab_Nac <- read_excel('C:/Users/Leonardo/Desktop/qss2021/CFA', sheet='Base')

Lab_Nac <- read.dta13('C:/Users/Leonardo/Desktop/qss2021/MCA/matrix.dta')
names(Lab_Nac)

Lab_Nac <- data.frame(Lab_Nac)
row.names(Lab_Nac) <- Lab_Nac$lab

Lab_Nac <-Lab_Nac[c(2:23)] #son las columnas con los puntajes
View(Lab_Nac)

##### Especificamos el CA

names(Lab_Nac)
## Columnas suplementarias aut pat tec dem 
resp.ca <- CA(Lab_Nac, ncp=5, row.sup =c(28:37), col.sup = c(19:22), graph = FALSE)
summary(resp.ca)

##Biplot de renglones y columnas
row <- get_ca_row(resp.ca)
row$coord
reng.suplementario <- resp.ca$row.sup

col <- get_ca_col(resp.ca)
col$coord

col.suplementarias <-resp.ca$col.sup
fviz_ca_biplot(resp.ca, repel = TRUE,title = "" )

#filas activas -- azules
#columnas activas en rojo
#columnas suplementarias rojo oscuro
#OCULTAMOS LAS VARIABLES ACTIVAS
fviz_ca_biplot(resp.ca, repel = TRUE, invisible = c("col","row"),title = "")

#Gráfico para renglones
fviz_ca_row(resp.ca, repel = TRUE)

#Grafico para columnas
fviz_ca_col(resp.ca, repel = TRUE)


