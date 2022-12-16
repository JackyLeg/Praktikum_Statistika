#Latihan Pertama
#1
dataku_made = read.delim("clipboard")
View(dataku_made)
wilcox.test(dataku_made$Sebelum, dataku_made$Setelah, paired = TRUE)

#2
dataku_novandy = read.delim("clipboard")
View(dataku_novandy)
wilcox.test(dataku_novandy$Sebelum, dataku_novandy$Sesudah, paired = TRUE)

dataku_novandy = read.delim("clipboard")
View(dataku_novandy)
wilcox.test(dataku_novandy$Sesudah, dataku_novandy$Sebelum, paired = TRUE)

#Latihan Kedua
df_asardi=read.delim("clipboard")
# independent 2-group Mann-Whitney U Test
wilcox.test(df_asardi$obat~df_asardi$grup)
# where y is numeric and A is A binary factor
head(df_asardi)
rank(df_asardi$obat)


#Latihan Ketiga
#1
#sebelum dicopy, saya mentranspose dataset-nya terlebih dahulu
myData = read.delim("clipboard")
View(myData)
wilcox.test(myData$Ganjil, myData$Genap, paired = TRUE)

#2
#sebelum dicopy, saya mentranspose dan merubah format dataset-nya terlebih dahulu
dataOfMine = read.delim("clipboard")
View(dataOfMine)
wilcox.test(dataOfMine$median~dataOfMine$jenis)
head(dataOfMine)
rank(dataOfMine$median)

