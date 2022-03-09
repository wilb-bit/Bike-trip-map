library(readxl)
#load data of route coordinates
Antigua_to_Argentina_Revised_Route2 <- read_excel("Antigua to Argentina Revised Route2.xlsx", 
                                                  col_types = c("date", "text", "text", 
                                                                "numeric", "numeric", "numeric", 
                                                                "numeric", "text", "text", "numeric", 
                                                                "numeric", "numeric", "text", "numeric", 
                                                                "numeric", "numeric", "text", "text", 
                                                                "text"))
View(Antigua_to_Argentina_Revised_Route2)

#install packages for plotting map and route
install.packages("ggplot2")
library(ggplot2)
install.packages("ggplot")
library(ggplot)
install.packages("ggrepel")
library(ggrepel)

install.packages("ggmap")
library(ggmap)

#select only the latitude and longitude coordinates of the route
latlong <- data.frame(lat=Antigua_to_Argentina_Revised_Route2$Lattitude,
                lon=Antigua_to_Argentina_Revised_Route2$Longitude)

#remove NA values
latlong <- latlong[rowSums(is.na(latlong)) == 0,]

#select map boundaries
mapbound <- c(left = -112, bottom = -57, right = -27, top = 30) #select map boundaries

#get map images from Stamen Maps API
mapimg <- get_stamenmap(mapbound, zoom = 4, maptype = "terrain", color = "bw", force = TRUE) 

#different map types decided not to use.
#mapimg <- get_stamenmap(mapbound, zoom = 4, maptype = "terrain", force = TRUE)
#mapimg <- get_stamenmap(mapbound, zoom = 4, maptype = "toner-background", force = TRUE)

#create map from images
finmap <- ggmap(mapimg) #create map from images

#Significant places on the trip will have a marker and label.
#long and lat of significant places
place = data.frame(lat = c(14.5568,-0.2149,-13.5161,-16.4978,-32.8779,-41.4689,-54.7893, -0.9538), 
                   lon = c(-90.7336,-78.5132,-71.9758,-68.1258,-68.8646,-72.9411,-68.2716, -90.9656))

finmap <- finmap + geom_path(data=latlong, aes(x=lon, y=lat), color="black", size=1) + geom_point(data = place, size = 2, color = "black")

finmap

#export to PNG image
# PNG device
png("mumtrip.png", width = 950, height = 1032)
plot(finmap)
# Close device
dev.off()

