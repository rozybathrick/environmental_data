##model coefficients

data(iris)
fit_species = 
  lm(
    Sepal.Length ~ Species,
    data = iris)
summary(fit_species)

##
5.0060+1.5820
scatter<-plot(
  Petal.Width ~ Petal.Length,
  data = iris,
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)")

shapiro.test(residuals(fit_species))

fit_petals<-lm(Petal.Width~Petal.Length, data=iris)
summary(fit_petals)

shapiro.test(residuals(fit_petals))

