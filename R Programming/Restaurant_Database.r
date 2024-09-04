## Install packages ##
install.packages("dplyr")
install.packages("RSQLite")
library(dplyr)
library(RSQLite)

## Data: menu ##
menu_item <- c("Spaghetti Bolognese","Risotto Champignone","Pizza Magherita","Florentine Steak","Lasagna Original","Pasta Tartufo")
price <- c(120,150,90,350,140,250)
food_type <- c("A la Carte","Sharing","Sharing","A la Carte","Sharing","A la Carte")
calories <- c(500,550,700,650,600,680)
chef <- c("Mario","Julio","Antonio","Julio","Mario","Antonio")
Italian_restaurant <- data.frame(menu_item,price,food_type,calories,chef)

## Data: chef ##
Chef_id <- c(1,2,3)
Chef_name <-c("Mario","Antonio","Julio")
Chef_list <- data.frame(Chef_id,Chef_name)

## Data: customers ##
customer_id <- c(1,2,3,4)
customer_name <- c("John","Harry","Ron","Greata")
fav_food <- c("Pizza Magherita","Pasta Tarttufo","Florentine Steak","Spaghetti Bolognese")
Customers <- data.frame(customer_id,customer_name,fav_food)

## Connect db ##
connect <- dbConnect(SQLite(),"My_Restaurant.db")

## Write tables ##
dbWriteTable(connect,"Italian_Restaurant",data.frame(menu_item,price,food_type,calories,chef))
dbWriteTable(connect,"Chef",Chef_list)
dbWriteTable(connect,"Customers",Customers)

## View tables in db ##
dbListTables(connect)

## View columns in tables ##
dbListFields(connect,"Italian_restaurant")
dbListFields(connect,"Chef")
dbListFields(connect,"Customers")

## Disconnect ##
dbDisconnect(connect)
