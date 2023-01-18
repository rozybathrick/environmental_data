require(here)
dat_bird_sta<-read.csv(here("data", "bird.sta.csv"))
dat_hab_sta<-read.csv(here("data", "hab.sta.csv"))

head(dat_bird_sta)
head(dat_hab_sta)

pairs(dat_hab_sta[, c("elev", "slope", "ba.tot", "lat", "long")])

hist(dat_bird_sta$SWTH, xlab="Number of birds counted", 
     main="Frequency of observations of Swainson's Thrush", breaks = 0:7 - 0.5)
