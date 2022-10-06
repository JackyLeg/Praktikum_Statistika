made=read.delim("clipboard")
View(made)
t.test(made$Volume, conf.level = 0.5)
