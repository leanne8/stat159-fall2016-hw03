ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")
ad <- ad[,-1]

#Multiple Regression for TV, Radio and Newspaper against Sales
reg <- lm(Sales ~ TV+Radio+Newspaper, data = ad)
#Summary statistics for the multiple regression 
regsum <- summary(reg)

#residual plot
png('./images/residual-plot.png')
plot(reg, which = 1, main = "residual plot vs fitted")
dev.off()

#scale location plot
png('./images/scale-location-plot.png')
plot(reg, which = 3, main = "Scale Location")
dev.off()

#Normal QQ
png('./images/normal-qq-plot.png')
plot(reg, which = 2, main = "Normal QQ")
dev.off()

#TV
TVReg <- lm(Sales~TV, data = ad)
TVregsum <- summary(TVReg)
png('./images/scatterplot-tv-sales.png')
plot(x = ad$TV, y = ad$Sales, xlab = "TV", ylab ="Sales", main = "TV vs Sales")
abline(TVReg, col = "red")
dev.off()

#Radio
RadioReg <- lm(Sales~Radio, data = ad)
RadioRegsum <- summary(RadioReg)
png('./images/scatterplot-radio-sales.png')
plot(x = ad$Radio, y = ad$Sales, xlab = "Radio", ylab ="Sales", main = "Radio vs Sales")
abline(RadioReg, col = "red")
dev.off()

#Newspaper
NewsReg <-lm(Sales~Newspaper, data = ad)
NewsRegsum <- summary(NewsReg)
png('./images/scatterplot-newspaper-sales.png')
plot(x = ad$Newspaper, y = ad$Sales, xlab = "Newspaper", ylab ="Sales", main = "Newspaper vs Sales")
abline(NewsReg, col = "red")
dev.off()

#save in regression binary data 
save(reg, regsum, TVReg, TVregsum, RadioReg, RadioRegsum, NewsReg, NewsRegsum, file = "./data/regression.RData")