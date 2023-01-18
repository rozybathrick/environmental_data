##seed predation for reading Qs 6


rm(list = ls())

pol_n_predation = 26
pol_n_no_predation = 184
pol_n_total = pol_n_predation+pol_n_no_predation
pol_predation_rate = pol_n_predation/pol_n_total
  
  psd_n_predation = 25
  psd_n_no_predation = 706
  psd_n_total = psd_n_predation+psd_n_no_predation
  psd_predation_rate = psd_n_predation/psd_n_total
  
  
  print(
    paste0(
      "The seed predation rate for Polyscias fulva is: ",
      round(pol_predation_rate, digits = 3))) 
  
  print(
    paste0(
      "The seed predation rate for Pseudospondias microcarpa is: ",
      round(psd_predation_rate, digits = 3)))
##make a table
  
  tab <- matrix(c(26, 184, 210, 0.124, 
                  25, 706, 731, 0.034), ncol=4, byrow=TRUE)
  colnames(tab) <- c('Any taken','None taken', 'N', 'predation rate')
  rownames(tab) <- c('Polyscias fulva (pol)','Pseudospondias microcarpa (psd)')
print(tab)  

##ratio of seed predatin proportions

ratio_pred=pol_predation_rate/psd_predation_rate
