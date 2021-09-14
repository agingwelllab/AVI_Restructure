# Clean AVI data
# 9.14.21 SP

# load required packages
library(tidyverse)

# load source functions
source('/Users/ssp160230/github_directory/AVI_RAnalysis/src/AVI_functions.R')

# set hard-coded variables 
avi_raw <- read_csv('/Users/ssp160230/github_directory/AVI_RAnalysis/data/AVI_data.csv')

# clean and reformat raw data frame
avi_clean <- aclean(avi_raw)

# calculate mean octant scores for each participant
avi_octant <- aoctant(avi_clean)

#write csv for clean data frame and octant data frame
write.csv(avi_clean, "/Users/ssp160230/github_directory/AVI_RAnalysis/output/AVI_clean.csv", row.names = FALSE)
write.csv(avi_octant, "/Users/ssp160230/github_directory/AVI_RAnalysis/output/AVI_octant.csv", row.names = FALSE)
