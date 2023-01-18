##ginko data reading

require(here)
ginkgo<-read.csv(here("data", "ginkgo_data_2022.csv"))
head(ginkgo)
subset(ginkgo, select = c(seeds_present, site_id))
length(unique(ginkgo$site_id))
trees_seeds <- data.frame(subset(ginkgo, select = c("site_id","seeds_present"))) 
trees_with_seeds <- data.frame(unique(trees_seeds$site_id[trees_seeds$seeds_present==TRUE])) 

##boxplot
boxplot(max_width~seeds_present, data=ginkgo )
boxplot(max_depth~seeds_present, data=ginkgo )
boxplot(notch_depth~seeds_present, data=ginkgo )
boxplot(petiole_length~seeds_present, data=ginkgo )
