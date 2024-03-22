#Working through popkin vignette####
#want to get a kinship setup where the kinship between founders is not assumed zero
#set working directory
setwd("c:/userdata/walkersm/pookilapopkin")

#install packages
install.packages('popkin')
install.packages('tidyverse')
install.packages('BEDMatrix')
#load libraries
library(popkin)
library(tidyverse)

#import bed matrix
library(BEDMatrix)
X <- BEDMatrix('NHM_plink7') 
# note: excluding extension is ok, as long as your bim, bed, map and fam files have the same name

#This `BEDMatrix` object is not a regular matrix but `popkin` handles it correctly.

#check number of individuals and SNPs are correct. They are correct, but are somehow being read in the wrong way (Ind as no. SNPs and visaversa)
dim(X)

#mine is displaying colnames as the SNPs. Need to reconfigure bim file
colnames(X)


