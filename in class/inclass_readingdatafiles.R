install.packages("here")
require(here)
dat_catrate<-read.csv(here("data", "catrate.csv"))
dat_delomys<-read.csv(here("data", "delomys.csv"))
dat_rope<-read.csv(here("data","rope.csv"))
head(dat_catrate)
head(dat_delomys)
head(dat_rope)

hist(dat_delomys$body_mass)
plot(dat_catrate$pond, dat_catrate$cat.rate, "b")     

as.numeric(factor(dat_delomys$sex))


plot(dat_delomys$body_mass, dat_delomys$body_length, main="Rozy's Delomys", 
     pch=as.numeric(factor(dat_delomys$sex)), xlab="body mass (mm)", ylab="body length(mm)")

     
     