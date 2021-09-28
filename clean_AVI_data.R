# Clean AVI data
# 9.17.21 SP

# load required packages
library(tidyverse)
library(here)

# load source functions
#source('/Users/ssp160230/github_directory/AVI_Restructure/src/AVI_functions.R') # this is an absolute path - it only works on YOUR computer
source(here::here('src', 'AVI_functions.R')) # this makes it a relative path to R Project so anyone with this repo can use it.

# set hard-coded variables - should load data in a different section
#avi_raw <- read_csv('/Users/ssp160230/github_directory/data/AVI_data.csv') 
#another absolute path - if you use any absolute paths, they should definitely be saved here as variables; data should be loaded separately

#load data
avi_raw <- read.csv(here::here('data', 'AVI_data.csv'))

# clean and reformat raw data frame
avi_clean <- aclean(avi_raw)

# calculate mean octant scores for each participant
avi_octant <- aoctant(avi_clean)



