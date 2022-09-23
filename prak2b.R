#KONEKSI KE DATABASE
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[imadenovandy]', host = 'localhost')
dbListTables(con) 
myQuery <- "SELECT * FROM `ps2`;"
df <- dbGetQuery(con, myQuery)

#FILTER JENIS KELAMIN L
library(dplyr)
df <- filter(df, gender == "L")
print(df)

