#Latihan Pertama
#1.2 - Menampilkan data
df_made = read.delim("clipboard")
View(df_made)
head(df_made)

#1.3 - Analisis ANOVA
model <- aov(korosi~metode, data=df_made)
summary(model)

#1.4 - Analisis Tukey Test
tukey.test <- TukeyHSD(model)
tukey.test


#Latihan Kedua
#1.1 - Import Data dan Menampilkan Data
df_novandy = PlantGrowth
View(df_novandy)
head(df_novandy)

#1.2 - Analisis ANOVA
tugas <- aov(weight~group, df_novandy)
summary(tugas)

#1.3 - Analisis Tukey Test
tukey.test <- TukeyHSD(tugas)
tukey.test

