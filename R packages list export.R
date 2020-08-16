##this is used to export installed packages to csv file

#list the packages and save to object ip

ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)

#export to csv
library(readr);
write_csv(ip,"Documents/RStudio files/R packages list.csv")