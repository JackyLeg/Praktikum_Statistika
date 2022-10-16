#Latihan Pertama
made=read.delim("clipboard")
View(made)
str(made)
mean(made$Volume)
t.test(made$Volume, mu=10)

#Latihan Kedua
novandy=read.delim("clipboard")
View(novandy)
str(novandy)
mean(novandy$Pendapatan)
t.test(novandy$Pendapatan, mu=14500)
