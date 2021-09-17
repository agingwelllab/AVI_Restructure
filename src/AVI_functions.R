# function to clean up raw data frame
aclean <- function(araw_df) {
  
  # remove unnecessary column for "complete" form status
  araw_wide <- select(araw_df, -affect_valuation_index_avi_complete)
  
  # make separate df for actual affect scores
  a_actual_long <- araw_wide[ , 1:25] %>%
    gather(variables, actual, a_enthusiastic_hp:a_satisfied_p, factor_key = TRUE)
  
  # make separate df for ideal affect scores
  a_ideal_long <- araw_wide[ , 26:49] %>%
    gather(variables, ideal, i_enthusiastic_hp:i_satisfied_p, factor_key = TRUE)
  
  # separate variables column into 'A/I', 'feeling', and 'octant'
  a_actual_long <- a_actual_long %>%
    separate(variables, c('A/I', 'feeling', 'octant'), '_')
  
  # remove column identifying if variable is actual or ideal affect
  a_actual_long <- select(a_actual_long, -'A/I')
  
  # bind actual and ideal affect dfs together to create one long df for both affect scores
  atotal_long <- cbind(a_actual_long, a_ideal_long)
  
  # remove redundant 'variables' columns
  atotal_clean <- atotal_long %>% 
    select(-variables)
  
  # arrange by record_id and octant
  atotal_clean <- arrange(atotal_clean, record_id, octant)
}

# function to create new df with mean octant subscores from clean df
aoctant <- function(atotal_clean) {
  
  # create atotal_mean df with octant subscores for each record_id
  atotal_mean_raw <- aggregate(
    cbind(actual,ideal) ~ record_id + octant, 
    data = atotal_clean, 
    FUN = mean
  )
  
  # round octant scores to 2 decimals
  atotal_mean_raw$actual <- round(atotal_mean_raw$actual, digits = 2)
  atotal_mean_raw$ideal <- round(atotal_mean_raw$ideal, digits = 2)
  
  # pivot df to long format to put actual/ideal variable in separate column
  atotal_pivotl <- atotal_mean_raw %>% 
    pivot_longer(
      cols = actual:ideal, 
      names_to = "affect_type", 
      values_to = "mean_score"
    )
  
  # pivot df to wide format to get octants as columns
  atotal_mean <- pivot_wider(
    data = atotal_pivotl, 
    names_from = octant, 
    values_from = mean_score
  )
}