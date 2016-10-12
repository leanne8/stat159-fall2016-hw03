ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")
ad <- ad[,-1]

#Summary statistics of advertising data 
sink(file = "./data/eda-output.txt")
cat("Summary statistics for TV\n")
summary(ad$TV)
cat("Summary statistics for Radio\n")
summary(ad$Radio)
cat("Summary statistics for Newspaper\n")
summary(ad$Newspaper)
cat("Summary statistics for Sales\n")
summary(ad$Sales)
cat("Correlation matrix for advertising data\n")
cor(ad)
sink()

#Histograms
library(ggplot2)
png(filename = "./images/histogram-tv.png")
ggplot(ad, aes(x = TV)) + geom_histogram(binwidth=7, colour = "blue") + ggtitle("Histogram for TV")
dev.off()
png(filename = "./images/histogram-radio.png")
ggplot(ad, aes(x = Radio)) + geom_histogram(binwidth=1, color="red") + ggtitle("Histogram for Radio")
dev.off()
png(filename = "./images/histogram-newspaper.png")
ggplot(ad, aes(x = Newspaper)) + geom_histogram(binwidth=3, color="yellow") + ggtitle("Histogram for Newspaper")
dev.off()
png(filename = "./images/histogram-sales.png")
ggplot(ad, aes(x = Sales)) +  geom_histogram(binwidth=1, color="green") + ggtitle("Histogram for Sales")
dev.off()

#Scatterplot for correlation matrix
png(filename = "./images/scatterplot-matrix.png")
pairs(ad, col = "pink")
dev.off()

#save correltaion matrix in binary format 
corr_mat = cor(ad)
save(corr_mat, file = "./data/correlation-matrix.RData")

