interval.arrivals = function(july.start, interv1)
{
  
  ## Pickups
  
  #head(july.start)
  july.start.xts <- xts(july.start$value,july.start$Date)
  #head(july.start.xts)
  #tail(july.start.xts)
  
  
  ## Select appropriate hours by subsetting xts object
  
  july.start.xts.9to915 <- july.start.xts[interv1]
  #head(july.start.xts.9to915)
  #tail(july.start.xts.9to915)
  
  
  ## Arrivals in interval by day
  
  july.start.xts.9to915.sums <- period.apply(july.start.xts.9to915, endpoints(july.start.xts.9to915, "days"), sum)
  #head(july.start.xts.9to915.sums)
  #tail(july.start.xts.9to915.sums)
  
  
  #plot(july.start.xts.9to915.sums, ylab="Arrivals",main="Arrivals 9.00 to 9.15",
  #     major.ticks='weeks',minor.ticks=FALSE,col=3)
  
  
  ## Weekdays only
  
  july.start.xts.9to915.sums.wday<- july.start.xts.9to915.sums[.indexwday(july.start.xts.9to915.sums) %in% 1:5]
  
  #CCP.XTS.summer<-CCP.XTS.2[.indexmon(CCP.XTS.2) %in% c(4,5,6,7,8)] # note zero-based indexing
  
  
  #plot(july.start.xts.9to915.sums.wday, ylab="Arrivals",main="Pickups 9.00 to 9.15 Weekdays",
  #     major.ticks='weeks',minor.ticks=FALSE,col=3)
  
  
  july.start.xts.9to915.sums.wday
  
}