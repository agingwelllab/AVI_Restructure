# Clean AVI data
# 9.28.21 SP

# load required packages
library(tidyverse)
library(here)

# load source functions
source(here::here('src', 'AVI_functions.R'))

# set hard-coded variables

# load data
avi_raw <- read.csv(here::here('data', 'AVI_data.csv'))

# clean and reformat raw data frame
avi_clean <- aclean(avi_raw)

# calculate mean octant scores for each participant
avi_octant <- aoctant(avi_clean)
