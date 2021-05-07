setwd("Home")
read.csv("~/Backpack Project Survey(Responses).csv")           

BPdata <- Backpack_Project_Survey_Responses_

BPdata$`What is your gender?` <- ifelse(BPdata$`What is your gender?` == "Male", BPdata$`What is your gender?` <- 1, BPdata$`What is your gender?` <- 0)
BPdata$`Have you gotten a backpack before?` <- ifelse(BPdata$`Have you gotten a backpack before?` == "Yes", BPdata$`Have you gotten a backpack before?` <- 1, BPdata$`Have you gotten a backpack before?` <- 0)
names(BPdata$`What is your gender?`) <- "male"
BPdata$male <- BPdata$'What is your gender?'
ncol(BPdata)
BPdata <- subset(BPdata[c(1:3,24, 5:8, 11:23)]) #Remove old gender column, and the empty columns
ncol(BPdata)

hist(BPdata[c(2:5, 7:15), 9], na.rm = TRUE) ##This ain't working...


plot(BPdata$`How often are you in need of food items?`, (BPdata$`How often are you in need of food items?`),
     xlim = c(0,32), ylim = c(0,32), col = "blue", na.rm = TRUE)
points(BPdata$`How are you in need of weather items? (weather items such as socks, rain coats, emergency blankets, etc.)`,BPdata$`How are you in need of weather items? (weather items such as socks, rain coats, emergency blankets, etc.)`,
     col = "red")
points(BPdata)
##Problem with this is that it overlaps. I wanted to make it freq~proportion, but it wont...


plot(BPdata$`How often are you in need of food items?`, (BPdata$`How often are you in need of food items?`)/15, ##cant make this work
     xlim = c(0,32), ylim = c(0,32), col = "blue", na.rm = TRUE)
points(BPdata$`How are you in need of weather items? (weather items such as socks, rain coats, emergency blankets, etc.)`,BPdata$`How are you in need of weather items? (weather items such as socks, rain coats, emergency blankets, etc.)`,
       col = "red")
points(BPdata)