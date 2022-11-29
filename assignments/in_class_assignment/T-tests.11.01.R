require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")
boxplot(dat_ade$body_mass_g~dat_ade$sex, main="Adelie Penguins: Body Mass")


##t test

t.test(dat_ade$body_mass_g[dat_ade$sex == "female"], mu=0) 

t.test(dat_ade$body_mass_g[dat_ade$sex == "male"], alternative="greater", mu=4000) 

require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")
aggregate(flipper_length_mm ~ species, subset=penguin_dat$species, data = penguin_dat, FUN =
            shapiro.test, drop=TRUE)
