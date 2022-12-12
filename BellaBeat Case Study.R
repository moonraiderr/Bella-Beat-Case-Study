library(tidyverse)
library(lubridate)
library(dplyr)
library(ggplot2)
library(tidyr)
install.packages("skimr")
install.packages("janitor")
install.packages("here")
library("here")
library("janitor")
library("skimr")
install.packages("sqldf")

colnames(daily_activity)
colnames(daily_calories)
colnames(daily_intensities)
colnames(daily_steps)
colnames(heart_rate_sec)
colnames(minute_METs)
colnames(sleep_day)
colnames(weight_log)

library(dplyr)

daily_activity %>%
   select(TotalSteps,TotalDistance,SedentaryMinutes,LightlyActiveMinutes,FairlyActiveMinutes,VeryActiveMinutes,Calories) %>%
   summary()

heart_rate_sec %>% 
   select(Value) %>%
summary()

minute_METs %>%
   select(METs) %>%
summary()

sleep_day %>%
   select(TotalSleepRecords,TotalMinutesAsleep, TotalTimeInBed)%>%
summary()

weight_log %>%
   select(WeightPounds,BMI) %>%
   summary()

install.packages("ggplot2")
library(ggplot2)

## `geom_smooth()` using formula 'y~x'

ggplot(data = daily_activity, aes(x=TotalSteps, y=Calories)) + geom_point() + stat_smooth(method = 1) + labs(title = "Relationship
      Between Total Daily Step & total Daily Calories Burned")
## `geom_smooth()` using formula 'y ~ x'
                             
ggplot(data = daily_activity, aes(x=VeryActiveMinutes, y=Calories)) + geom_point() + stat_smooth(method = 1) + labs(title = "Relationship
 Between Very Active Minutes & Total Daily Calories Burned")
## `geom_smooth()` using formula 'y ~ x'

ggplot(data = daily_activity, aes(x=TotalDistance, y=Calories)) + geom_smooth () + labs(title = " Relationship Between Total Distance
                                                                                        and Total Daily Calories Burned")
## `geom_smooth()` usong method = 'loess' and formula 'y ~ x'

ggplot(data = sleep_day, aes(x=TotalMinutesAsleep, y=TotalTimeInBed)) + geom_point() + stat_smooth(method = 1) + labs(title = "Relationship Between Total Minutes
                                                                                                                      Asleep & Total Time In Bed")
## `geom_smooth()` using formula 'y ~ x'
