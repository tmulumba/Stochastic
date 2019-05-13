# Packeges
install.packages("xts")
install.packages("psych")

require(xts)
require(psych)

# Input data

july = read.csv("D:/July.csv")
nrow(july)
nrow(july)
names(july)
str(july)


# Prelims

july2 = subset(july, start.station.name=="Pershing Square North" | end.station.name=="Pershing Square North" )
#swiss = swiss[swiss$PURPOSE==1 | swiss$PURPOSE==3,]
nrow(july2)
names(july2)
str(july2)
head(july2)


# Subset for starts

july.start = subset(july, start.station.name=="Pershing Square North", select = c("starttime", "end.station.name") )
nrow(july.start)
names(july.start)
str(july.start)
head(july.start)
july.start$value <- 1

july.start$Date<-as.POSIXct(strptime(july.start$starttime, "%Y-%m-%d %H:%M:%S"))



# Subset for ends

july.end = subset(july, end.station.name=="Pershing Square North", select = c("stoptime", "start.station.name") )
nrow(july.end)
names(july.end)
str(july.end)
head(july.end)
july.end$value <- 1

july.end$Date<-as.POSIXct(strptime(july.end$stoptime, "%Y-%m-%d %H:%M:%S"))




# Time slots
# 6 to 6.15

ST6to615 <- interval.arrivals(july.start, c("T06:00/T06:14"))

head(ST6to615)

END6to615 <- interval.arrivals(july.end, c("T06:00/T06:14"))

head(END6to615)


# 6.15 to 6.30

ST615to630 <- interval.arrivals(july.start, c("T06:15/T06:29"))

head(ST615to630)

END615to630 <- interval.arrivals(july.end, c("T06:15/T06:29"))

head(END615to630)



# 6.30 to 6.45

ST630to645 <- interval.arrivals(july.start, c("T06:30/T06:44"))

head(ST630to645)

END630to645 <- interval.arrivals(july.end, c("T06:30/T06:44"))

head(END630to645)



# 6.45 to 7.00

ST645to700 <- interval.arrivals(july.start, c("T06:45/T06:59"))

head(ST645to700)

END645to700 <- interval.arrivals(july.end, c("T06:45/T06:59"))

head(END645to700)



# 7-8am
# 7 to 7.15

ST7to715 <- interval.arrivals(july.start, c("T07:00/T07:14"))

head(ST7to715)

END7to715 <- interval.arrivals(july.end, c("T07:00/T07:14"))

head(END7to715)


# 7.15 to 7.30

ST715to730 <- interval.arrivals(july.start, c("T07:15/T07:29"))

head(ST715to730)

END715to730 <- interval.arrivals(july.end, c("T07:15/T07:29"))

head(END715to730)



# 7.30 to 7.45

ST730to745 <- interval.arrivals(july.start, c("T07:30/T07:44"))

head(ST730to745)

END730to745 <- interval.arrivals(july.end, c("T07:30/T07:44"))

head(END730to745)



# 7.45 to 8.00

ST745to800 <- interval.arrivals(july.start, c("T07:45/T07:59"))

head(ST745to800)

END745to800 <- interval.arrivals(july.end, c("T07:45/T07:59"))

head(END745to800)


# 8-9am
# 8-8.15

ST8to815 <- interval.arrivals(july.start, c("T08:00/T08:14"))

head(ST8to815)

END8to815 <- interval.arrivals(july.end, c("T08:00/T08:14"))

head(END8to815)


# 8.15 to 8.30

ST815to830 <- interval.arrivals(july.start, c("T08:15/T08:29"))

head(ST815to830)

END815to830 <- interval.arrivals(july.end, c("T08:15/T08:29"))

head(END815to830)



# 8.30 to 8.45

ST830to845 <- interval.arrivals(july.start, c("T08:30/T08:44"))

head(ST830to845)

END830to845 <- interval.arrivals(july.end, c("T08:30/T08:44"))

head(END830to845)



# 8.45 to 9.00

ST845to900 <- interval.arrivals(july.start, c("T08:45/T08:59"))

head(ST845to900)

END845to900 <- interval.arrivals(july.end, c("T08:45/T08:59"))

head(END845to900)







# Afternoon peak
# 3-4pm

# 15.00-15.15

ST15to1515 <- interval.arrivals(july.start, c("T15:00/T15:14"))

head(ST15to1515)

END15to1515 <- interval.arrivals(july.end, c("T15:00/T15:14"))

head(END15to1515)


# 15.15 to 15.30

ST1515to1530 <- interval.arrivals(july.start, c("T15:15/T15:29"))

head(ST1515to1530)

END1515to1530 <- interval.arrivals(july.end, c("T15:15/T15:29"))

head(END1515to1530)



# 15.30 to 15.45

ST1530to1545 <- interval.arrivals(july.start, c("T15:30/T15:44"))

head(ST1530to1545)

END1530to1545 <- interval.arrivals(july.end, c("T15:30/T15:44"))

head(END1530to1545)



# 15.45 to 16.00

ST1545to1600 <- interval.arrivals(july.start, c("T15:45/T15:59"))

head(ST1545to1600)

END1545to1600 <- interval.arrivals(july.end, c("T15:45/T15:59"))

head(END1545to1600)



# 16-17.00

# 16.00 - 16.15

ST16to1615 <- interval.arrivals(july.start, c("T16:00/T16:14"))

head(ST16to1615)

END16to1615 <- interval.arrivals(july.end, c("T16:00/T16:14"))

head(END16to1615)


# 16.15 to 16.30

ST1615to1630 <- interval.arrivals(july.start, c("T16:15/T16:29"))

head(ST1615to1630)

END1615to1630 <- interval.arrivals(july.end, c("T16:15/T16:29"))

head(END1615to1630)



# 16.30 to 16.45

ST1630to1645 <- interval.arrivals(july.start, c("T16:30/T16:44"))

head(ST1630to1645)

END1630to1645 <- interval.arrivals(july.end, c("T16:30/T16:44"))

head(END1630to1645)



# 16.45 to 17.00

ST1645to1700 <- interval.arrivals(july.start, c("T16:45/T16:59"))

head(ST1645to1700)

END1645to1700 <- interval.arrivals(july.end, c("T16:45/T16:59"))

head(END1645to1700)


# 17.00 - 18.00

# 18.00 - 18.15

ST17to1715 <- interval.arrivals(july.start, c("T17:00/T17:14"))

head(ST17to1715)

END17to1715 <- interval.arrivals(july.end, c("T17:00/T17:14"))

head(END17to1715)


# 17.15 to 17.30

ST1715to1730 <- interval.arrivals(july.start, c("T17:15/T17:29"))

head(ST1715to1730)

END1715to1730 <- interval.arrivals(july.end, c("T17:15/T17:29"))

head(END1715to1730)



# 17.30 to 17.45

ST1730to1745 <- interval.arrivals(july.start, c("T17:30/T17:44"))

head(ST1730to1745)

END1730to1745 <- interval.arrivals(july.end, c("T17:30/T17:44"))

head(END1730to1745)



# 17.45 to 18.00

ST1745to1800 <- interval.arrivals(july.start, c("T17:45/T17:59"))

head(ST1745to1800)

END1745to1800 <- interval.arrivals(july.end, c("T17:45/T17:59"))

head(END1745to1800)


# Collect results in dataframe


lambda.actual <- c(END6to615, END615to630, END630to645, END645to700,
                        END7to715, END715to730, END730to745, END745to800,
                        END8to815, END815to830, END830to845, END845to900,
                        END15to1515, END1515to1530, END1530to1545, END1545to1600,
                        END16to1615, END1615to1630, END1630to1645, END1645to1700,
                        END17to1715, END1715to1730, END1730to1745, END1745to1800)



mu.actual <- c(ST6to615, ST615to630, ST630to645, ST645to700,
               ST7to715, ST715to730, ST730to745, ST745to800,
               ST8to815, ST815to830, ST830to845, ST845to900,
               ST15to1515, ST1515to1530, ST1530to1545, ST1545to1600,
               ST16to1615, ST1615to1630, ST1630to1645, ST1645to1700,
               ST17to1715, ST1715to1730, ST1730to1745, ST1745to1800)



lambda.avg <- c(mean(END6to615), mean(END615to630), mean(END630to645), mean(END645to700),
                mean(END7to715), mean(END715to730), mean(END730to745), mean(END745to800),
                mean(END8to815), mean(END815to830), mean(END830to845), mean(END845to900),
                mean(END15to1515), mean(END1515to1530), mean(END1530to1545), mean(END1545to1600),
                mean(END16to1615), mean(END1615to1630), mean(END1630to1645), mean(END1645to1700),
                mean(END17to1715), mean(END1715to1730), mean(END1730to1745), mean(END1745to1800) )
                
                
                
mu.avg <- c(mean(ST6to615), mean(ST615to630), mean(ST630to645), mean(ST645to700),
            mean(ST7to715), mean(ST715to730), mean(ST730to745), mean(ST745to800),
            mean(ST8to815), mean(ST815to830), mean(ST830to845), mean(ST845to900),
            mean(ST15to1515), mean(ST1515to1530), mean(ST1530to1545), mean(ST1545to1600),
            mean(ST16to1615), mean(ST1615to1630), mean(ST1630to1645), mean(ST1645to1700),
            mean(ST17to1715), mean(ST1715to1730), mean(ST1730to1745), mean(ST1745to1800) )

# Plots

g <- ggplot(,aes(x=c(6,6.15,6.30,6.45,7,7.15,7.30,7.45,8,8.15,8.30,8.45)))
g + geom_point(aes(y=lambda.avg[1:12] , color = "blue"), stat="identity") +
  geom_point(aes(y=mu.avg[1:12] , color = "red"), stat="identity") +
  ggtitle("Average Pickups/ Returns - Morning Peak") +
  xlab("Time of Day") +
  ylab(" ") +
  theme_bw()+
#  theme(legend.position="bottom") +
  scale_color_manual(name="Transitions", 
                     labels = c("lambda", "mu"),
                     values = c("blue", "red") ) 


p <- ggplot(,aes(x=c(15.0,15.15,15.30,15.45,16.0,16.15,16.30,16.45,17.0,17.15,17.30,17.45)))
p + geom_point(aes(y=lambda.avg[13:24] , color = "blue"), stat="identity") +
  geom_point(aes(y=mu.avg[13:24], color = "red"), stat="identity") +
  ggtitle("Average Pickups/ Returns - Afternoon Peak") +
  xlab("Time of Day") +
  ylab(" ") +
  theme_bw() +
  scale_color_manual(name="Transitions", 
                     labels = c("lambda", "mu"),
                     values = c("blue", "red") )
                     


# Steady state calculations

K <- 67

# Morning

SS6to615 <- steady.state(lambda.avg[1], mu.avg[1], K)

SS615to630 <- steady.state(lambda.avg[2], mu.avg[2], K)

SS630to645 <- steady.state(lambda.avg[3], mu.avg[3], K)

SS645to700 <- steady.state(lambda.avg[4], mu.avg[4], K)

SS700to715 <- steady.state(lambda.avg[5], mu.avg[5], K)

SS715to730 <- steady.state(lambda.avg[6], mu.avg[6], K)

SS730to745 <- steady.state(lambda.avg[7], mu.avg[7], K)

SS745to800 <- steady.state(lambda.avg[8], mu.avg[8], K)

SS800to815 <- steady.state(lambda.avg[9], mu.avg[9], K)

SS815to830 <- steady.state(lambda.avg[10], mu.avg[10], K)

SS830to845 <- steady.state(lambda.avg[11], mu.avg[11], K)

SS845to900 <- steady.state(lambda.avg[12], mu.avg[12], K)



# Afternoon


SS1500to1515 <- steady.state(lambda.avg[13], mu.avg[13], K)

SS1515to1530 <- steady.state(lambda.avg[14], mu.avg[14], K)

SS1530to1545 <- steady.state(lambda.avg[15], mu.avg[15], K)

SS1545to1600 <- steady.state(lambda.avg[16], mu.avg[16], K)

SS1600to1615 <- steady.state(lambda.avg[17], mu.avg[17], K)

SS1615to1630 <- steady.state(lambda.avg[18], mu.avg[18], K)

SS1630to1645 <- steady.state(lambda.avg[19], mu.avg[19], K)

SS1645to1700 <- steady.state(lambda.avg[20], mu.avg[20], K)

SS1700to1715 <- steady.state(lambda.avg[21], mu.avg[21], K)

SS1715to1730 <- steady.state(lambda.avg[22], mu.avg[22], K)

SS1730to1745 <- steady.state(lambda.avg[23], mu.avg[23], K)

SS1745to1800 <- steady.state(lambda.avg[24], mu.avg[24], K)


# Chain Progression

morn <- c(SS6to615[[2]],  SS615to630[[2]],  SS630to645[[2]],  SS645to700[[2]],  
          SS700to715[[2]],  SS715to730[[2]],  SS730to745[[2]],SS745to800[[2]], 
          SS800to815[[2]], SS815to830[[2]], SS830to845[[2]], SS845to900[[2]])


aft <- c(SS1500to1515[[2]],  SS1515to1530[[2]],  SS1530to1545[[2]],  SS1545to1600[[2]],  
         SS1600to1615[[2]],  SS1615to1630[[2]],  SS1630to1645[[2]],  SS1645to1700[[2]],  
         SS1700to1715[[2]],  SS1715to1730[[2]],  SS1730to1745[[2]],  SS1745to1800[[2]])


morn <- round(morn)

aft <- round(aft)




# Plot
g <- ggplot(, aes(c(6,6.15,6.30,6.45,7,7.15,7.30,7.45,8,8.15,8.30,8.45), morn))
g + geom_bar(stat="identity", width = 0.05) + 
  labs(title="Morning Peak", 
       subtitle="Differences") +
  xlab ("Time of Day") +
  ylab ("Arrivals")



g <- ggplot(, aes(c(15.0,15.15,15.30,15.45,16.0,16.15,16.30,16.45,17.0,17.15,17.30,17.45), aft))
g + geom_bar(stat="identity", width = 0.05) + 
  labs(title="Afternoon Peak", 
       subtitle="Differences") +
  xlab ("Time of Day") +
  ylab ("Arrivals")




# Start with inventory = Inv

Inv <- 13

g <- ggplot(, aes(c(6,6.15,6.30,6.45,7,7.15,7.30,7.45,8,8.15,8.30,8.45),
                  c(Inv + morn[1], 
                    Inv + morn[1] + morn[2],
                    Inv + morn[1] + morn[2] + morn[3],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6] + morn[7],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6] + morn[7] + morn[8],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6] + morn[7] + morn[8] + morn[9],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6] + morn[7] + morn[8] + morn[9]
                    + morn[10],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6] + morn[7] + morn[8] + morn[9]
                    + morn[10] + morn[11],
                    Inv + morn[1] + morn[2] + morn[3] + morn[4] + morn[5] + morn[6] + morn[7] + morn[8] + morn[9]
                    + morn[10] + morn[11] + morn[12]
                  
                    )   ))
g + geom_pointline(stat="identity", color = "blue") +
  geom_hline(yintercept=67, linetype="dashed", color = "red") +
  labs(title="Morning Peak", 
       subtitle="Starting Inventory = 13") +
  xlab("Time of Day") +
  theme_bw() +
  xlab ("Time of Day") +
  ylab ("Cumulative Arrivals")



# Afternoon

Inv <- 5

g <- ggplot(, aes(c(15.0,15.15,15.30,15.45,16.0,16.15,16.30,16.45,17.0,17.15,17.30,17.45),
                  c(Inv + aft[1], 
                    Inv + aft[1] + aft[2],
                    Inv + aft[1] + aft[2] + aft[3],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6] + aft[7],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9]
                    + aft[10],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9]
                    + aft[10] + aft[11],
                    Inv + aft[1] + aft[2] + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9]
                    + aft[10] + aft[11] + aft[12]
                    
                  )   ))
g + geom_pointline(stat="identity", color = "blue") +
  geom_hline(yintercept=67, linetype="dashed", color = "red") +
  labs(title="Afternoon Peak", 
       subtitle="Starting Inventory = 5") +
  xlab("Time of Day") +
  theme_bw() +
  xlab ("Time of Day") +
  ylab ("Cumulative Arrivals")




# Afternoon Ignoring 1st two

Inv <- 10

g <- ggplot(, aes(c(15.30,15.45,16.0,16.15,16.30,16.45,17.0,17.15,17.30,17.45),
                  c(Inv + aft[3],
                    Inv + aft[3] + aft[4],
                    Inv + aft[3] + aft[4] + aft[5],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6] + aft[7],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9]
                    + aft[10],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9]
                    + aft[10] + aft[11],
                    Inv + aft[3] + aft[4] + aft[5] + aft[6] + aft[7] + aft[8] + aft[9]
                    + aft[10] + aft[11] + aft[12]
                    
                  )   ))
g + geom_pointline(stat="identity", color = "blue") +
  geom_hline(yintercept=67, linetype="dashed", color = "red") +
  labs(title="Afternoon Peak", 
       subtitle="Starting Inventory = 10") +
  xlab("Time of Day") +
  theme_bw() +
  xlab ("Time of Day") +
  ylab ("Cumulative Arrivals")