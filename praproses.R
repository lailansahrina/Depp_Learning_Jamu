dt <- read.csv2("jamuherbs.csv", header = TRUE, sep = ",")
View(dt)
dim(dt)
str(dt)
summary(dt)

dt2 <- read.csv2("metabolite.csv", header = TRUE)
View(dt2)
for (i in 1:dim(dt)[1]){
  for (j in 1:dim(dt)[2]){
    for (k in 1:dim(dt2)[1])
    if(dt[i,j]==dt2[k, "ID.Plant"]){
      data[i] <- paste0(unlist(c("1")), collapse = ",")}
    else{
      data[i] <- paste0(unlist(c("0")), collapse = ",")
    }
  }
}
data <- write.csv(data, "C:/Users/ACER/Documents/SKRIPSI/data.csv", row.names=FALSE)
View(data)
