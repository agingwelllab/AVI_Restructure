# AVI_Restructure
* Repo contains code to restructure data for the Affect Valuation Index (AVI) measure exported from REDCap

## Functions
* aclean(*df*)
  * restructures data frame from wide format to long format
  * input: raw data frame imported from CSV (*araw_df* in functions script)
    * variable names as columns, separate rows for each participant
  * output: data frame with separate columns for actual affect scores and ideal affect scores (*atotal_clean* in functions script)
    * 5 columns: record_id, feeling, octant, actual, and ideal
    * each record_id has 24 rows (one for each feeling)
* aoctant(*df*)
  * calculates average score per octant for each record_id (3 feelings per octant)
    * High arousal (h), High-arousal Negative (hn), High-arousal Positive (hp), Low arousal (l), Low-arousal Negative (ln), Low-arousal Positive (lp), Negative (n), and Positive (p)
  * input: clean data frame from aclean(*df*)'s output
  * output: data frame with mean scores for each octant (*atotal_mean* in functions script)
    * 10 columns: record_id, affect_type, 1 column for each octant
    * each record_id has 2 rows (one for each affect type)
