#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('AffectValuationIndex_DATA_2021-09-14_1635.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$a_enthusiastic_hp)="enthusiastic"
label(data$a_dull_ln)="dull"
label(data$a_excited_hp)="excited"
label(data$a_sleepy_ln)="sleepy"
label(data$a_sluggish_ln)="sluggish"
label(data$a_idle_l)="idle"
label(data$a_aroused_h)="aroused"
label(data$a_astonished_h)="astonished"
label(data$a_surprised_h)="surprised"
label(data$a_passive_l)="passive"
label(data$a_inactive_l)="inactive"
label(data$a_fearful_hn)="fearful"
label(data$a_calm_lp)="calm"
label(data$a_hostile_hn)="hostile"
label(data$a_peaceful_lp)="peaceful"
label(data$a_nervous_hn)="nervous"
label(data$a_relaxed_lp)="relaxed"
label(data$a_elated_hp)="elated"
label(data$a_lonely_n)="lonely"
label(data$a_content_p)="content"
label(data$a_sad_n)="sad"
label(data$a_happy_p)="happy"
label(data$a_unhappy_n)="unhappy"
label(data$a_satisfied_p)="satisfied"
label(data$i_enthusiastic_hp)="enthusiastic"
label(data$i_dull_ln)="dull"
label(data$i_excited_hp)="excited"
label(data$i_sleepy_ln)="sleepy"
label(data$i_sluggish_ln)="sluggish"
label(data$i_idle_l)="idle"
label(data$i_aroused_h)="aroused"
label(data$i_astonished_h)="astonished"
label(data$i_surprised_h)="surprised"
label(data$i_passive_l)="passive"
label(data$i_inactive_l)="inactive"
label(data$i_fearful_hn)="fearful"
label(data$i_calm_lp)="calm"
label(data$i_hostile_hn)="hostile"
label(data$i_peaceful_lp)="peaceful"
label(data$i_nervous_hn)="nervous"
label(data$i_relaxed_lp)="relaxed"
label(data$i_elated_hp)="elated"
label(data$i_lonely_n)="lonely"
label(data$i_content_p)="content"
label(data$i_sad_n)="sad"
label(data$i_happy_p)="happy"
label(data$i_unhappy_n)="unhappy"
label(data$i_satisfied_p)="satisfied"
label(data$affect_valuation_index_avi_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$a_enthusiastic_hp.factor = factor(data$a_enthusiastic_hp,levels=c("1","2","3","4","5"))
data$a_dull_ln.factor = factor(data$a_dull_ln,levels=c("1","2","3","4","5"))
data$a_excited_hp.factor = factor(data$a_excited_hp,levels=c("1","2","3","4","5"))
data$a_sleepy_ln.factor = factor(data$a_sleepy_ln,levels=c("1","2","3","4","5"))
data$a_sluggish_ln.factor = factor(data$a_sluggish_ln,levels=c("1","2","3","4","5"))
data$a_idle_l.factor = factor(data$a_idle_l,levels=c("1","2","3","4","5"))
data$a_aroused_h.factor = factor(data$a_aroused_h,levels=c("1","2","3","4","5"))
data$a_astonished_h.factor = factor(data$a_astonished_h,levels=c("1","2","3","4","5"))
data$a_surprised_h.factor = factor(data$a_surprised_h,levels=c("1","2","3","4","5"))
data$a_passive_l.factor = factor(data$a_passive_l,levels=c("1","2","3","4","5"))
data$a_inactive_l.factor = factor(data$a_inactive_l,levels=c("1","2","3","4","5"))
data$a_fearful_hn.factor = factor(data$a_fearful_hn,levels=c("1","2","3","4","5"))
data$a_calm_lp.factor = factor(data$a_calm_lp,levels=c("1","2","3","4","5"))
data$a_hostile_hn.factor = factor(data$a_hostile_hn,levels=c("1","2","3","4","5"))
data$a_peaceful_lp.factor = factor(data$a_peaceful_lp,levels=c("1","2","3","4","5"))
data$a_nervous_hn.factor = factor(data$a_nervous_hn,levels=c("1","2","3","4","5"))
data$a_relaxed_lp.factor = factor(data$a_relaxed_lp,levels=c("1","2","3","4","5"))
data$a_elated_hp.factor = factor(data$a_elated_hp,levels=c("1","2","3","4","5"))
data$a_lonely_n.factor = factor(data$a_lonely_n,levels=c("1","2","3","4","5"))
data$a_content_p.factor = factor(data$a_content_p,levels=c("1","2","3","4","5"))
data$a_sad_n.factor = factor(data$a_sad_n,levels=c("1","2","3","4","5"))
data$a_happy_p.factor = factor(data$a_happy_p,levels=c("1","2","3","4","5"))
data$a_unhappy_n.factor = factor(data$a_unhappy_n,levels=c("1","2","3","4","5"))
data$a_satisfied_p.factor = factor(data$a_satisfied_p,levels=c("1","2","3","4","5"))
data$i_enthusiastic_hp.factor = factor(data$i_enthusiastic_hp,levels=c("1","2","3","4","5"))
data$i_dull_ln.factor = factor(data$i_dull_ln,levels=c("1","2","3","4","5"))
data$i_excited_hp.factor = factor(data$i_excited_hp,levels=c("1","2","3","4","5"))
data$i_sleepy_ln.factor = factor(data$i_sleepy_ln,levels=c("1","2","3","4","5"))
data$i_sluggish_ln.factor = factor(data$i_sluggish_ln,levels=c("1","2","3","4","5"))
data$i_idle_l.factor = factor(data$i_idle_l,levels=c("1","2","3","4","5"))
data$i_aroused_h.factor = factor(data$i_aroused_h,levels=c("1","2","3","4","5"))
data$i_astonished_h.factor = factor(data$i_astonished_h,levels=c("1","2","3","4","5"))
data$i_surprised_h.factor = factor(data$i_surprised_h,levels=c("1","2","3","4","5"))
data$i_passive_l.factor = factor(data$i_passive_l,levels=c("1","2","3","4","5"))
data$i_inactive_l.factor = factor(data$i_inactive_l,levels=c("1","2","3","4","5"))
data$i_fearful_hn.factor = factor(data$i_fearful_hn,levels=c("1","2","3","4","5"))
data$i_calm_lp.factor = factor(data$i_calm_lp,levels=c("1","2","3","4","5"))
data$i_hostile_hn.factor = factor(data$i_hostile_hn,levels=c("1","2","3","4","5"))
data$i_peaceful_lp.factor = factor(data$i_peaceful_lp,levels=c("1","2","3","4","5"))
data$i_nervous_hn.factor = factor(data$i_nervous_hn,levels=c("1","2","3","4","5"))
data$i_relaxed_lp.factor = factor(data$i_relaxed_lp,levels=c("1","2","3","4","5"))
data$i_elated_hp.factor = factor(data$i_elated_hp,levels=c("1","2","3","4","5"))
data$i_lonely_n.factor = factor(data$i_lonely_n,levels=c("1","2","3","4","5"))
data$i_content_p.factor = factor(data$i_content_p,levels=c("1","2","3","4","5"))
data$i_sad_n.factor = factor(data$i_sad_n,levels=c("1","2","3","4","5"))
data$i_happy_p.factor = factor(data$i_happy_p,levels=c("1","2","3","4","5"))
data$i_unhappy_n.factor = factor(data$i_unhappy_n,levels=c("1","2","3","4","5"))
data$i_satisfied_p.factor = factor(data$i_satisfied_p,levels=c("1","2","3","4","5"))
data$affect_valuation_index_avi_complete.factor = factor(data$affect_valuation_index_avi_complete,levels=c("0","1","2"))

levels(data$a_enthusiastic_hp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_dull_ln.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_excited_hp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_sleepy_ln.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_sluggish_ln.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_idle_l.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_aroused_h.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_astonished_h.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_surprised_h.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_passive_l.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_inactive_l.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_fearful_hn.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_calm_lp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_hostile_hn.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_peaceful_lp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_nervous_hn.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_relaxed_lp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_elated_hp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_lonely_n.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_content_p.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_sad_n.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_happy_p.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_unhappy_n.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$a_satisfied_p.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_enthusiastic_hp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_dull_ln.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_excited_hp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_sleepy_ln.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_sluggish_ln.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_idle_l.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_aroused_h.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_astonished_h.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_surprised_h.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_passive_l.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_inactive_l.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_fearful_hn.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_calm_lp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_hostile_hn.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_peaceful_lp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_nervous_hn.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_relaxed_lp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_elated_hp.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_lonely_n.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_content_p.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_sad_n.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_happy_p.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_unhappy_n.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$i_satisfied_p.factor)=c("Never1","A small amount of the time2","Half the time3","Most of the time4","All the time5")
levels(data$affect_valuation_index_avi_complete.factor)=c("Incomplete","Unverified","Complete")
