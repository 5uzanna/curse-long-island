df <- read.csv('Index_Crimes_by_County_and_Agency__Beginning_1990.csv')
old_data <- df[is.na(df$Months.Reported), ]
new_data <- df[!is.na(df$Months.Reported), ]

df$MurderRate <- df$Murder / df$Total.Index.Crimes
df$ViolentRate <- df$Violent / df$Total.Index.Crimes
df1 <- df[order(df$Year), c("Year", "MurderRate", "ViolentRate")]
plot(df1)
matplot(df1$Year, df1$MurderRate, type='l', col="red")
par(new=T)
matplot(df1$Year, df1$ViolentRate, type='l', col="blue")
par(new=F)
