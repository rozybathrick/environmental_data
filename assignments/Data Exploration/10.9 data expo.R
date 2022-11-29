require(here)

here()
dat_habitat<-read.csv(here("data", "hab.sta.csv"))
head(dat_habitat)
elev<-hist(dat_habitat$elev, main="Elevation frequency", xlab="Elevation (meters)",
           xlim=c(0,900))
asp<-hist(dat_habitat$aspect, main="Aspect frequency", xlab="Aspect", 
          breaks=20, xlim=c(0,360), include.lowest=TRUE)
sslope<-hist(dat_habitat$slope, main="Slope frequency", xlab="Percent Slope", xlim=c(0,110))
par(mfrow=c(2,3))

elev_ba<-plot(dat_habitat$elev, dat_habitat$ba.tot, 
              main="Tree area by elevation",
              xlab="Elevation (meters)", 
              ylab="basal area of trees, m2 per ha",
              cex=0.5)+
  curve(line_point_slope(x, x1=200, y1=25, slope=0.35), col="Red", lwd=2, add=TRUE)



asp_ba<-plot(dat_habitat$aspect, dat_habitat$ba.tot, 
             main="Tree area by aspect",
             xlab="Aspect (degrees)", 
             ylab="basal area of trees, m2 per ha",
             cex=0.5)+
  curve(line_point_slope(x, x1=175, y1=25, slope=0.01), col="Red", lwd=2, add=TRUE)
 
slope_ba<-plot(dat_habitat$slope, dat_habitat$ba.tot, 
               main="Tree area by slope",
               xlab="Percent slope", 
               ylab="basal area of trees, m2 per ha",
               cex=0.5)+
  curve(line_point_slope(x, x1=50, y1=25, slope=0.9), col="Red", lwd=2, add=TRUE)


  line_point_slope = function(x, x1, y1, slope){
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
