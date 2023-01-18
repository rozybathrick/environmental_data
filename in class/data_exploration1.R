##in class data exploration

install.packages("palmerpenguins")
install.packages("here")
require(palmerpenguins)
require(here)

class("palmerpenguins")
penguins=data.frame(penguins)
mean(penguins$body_mass_g, na.rm=TRUE)
head(penguins)
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)


hist(penguins$flipper_length_mm, main="Penguin flipper length", xlab="flipper length mm", 
     ylab="frequency across species")

require(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$flipper_length_mm, main="Penguin flipper length", xlab="flipper length mm", 
     ylab="frequency across species")
dev.off()


plot(penguins$flipper_length_mm, penguins$bill_depth_mm)
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

coplot(body_mass_g ~ bill_depth_mm | species, data = penguins, rows=1)
