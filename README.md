# Bella Beat Case Study

### Intro

The Bellabeat app provides users with health data related to their activity, sleep, stress, menstrual cycle, and mindfulness habits. This data can help users better understand their current habits andmake healthy decisions. The Bellabeat app connects to their line of smart wellness products.Bellabeat is a successful small company, but they have the potential to become a larger player in the global smart device market. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart device fitness data could help unlock new growth opportunities for the company. 

I have been asked to focus on one of Bellabeat’s products and analyze smart device data to gain insight into how consumers are using their smart devices. 

The insights I discover will then help guide marketing strategy for the company. 


### Business Task

Analyze smart device usage data in order to gain insight into how consumers use non-Bellabeat smart devices. And identify potential opportunities for growth and recommendations for the Bellabeat marketing strategy.

### Questions for the analysis:

How could these trends apply to Bellabeat customers?

What are some trends in smart device usage?

How could these trends help influence Bellabeat’s marketing strategy?

### Stakeholders

Urška Sršen — Bellabeat’s cofounder and Chief Creative Officer

Sando Mur — Mathematician and Bellabeat’s cofounder; key member of the Bellabeat executive team

Bellabeat marketing analytics team — A team of data analysts responsible for collecting, analyzing, and reporting data that helps guide Bellabeat’s marketing strategy.

### Prepare:

The data for this analysis will come from FitBit Fitness Tracker Data on Kaggle. This Kaggle data set

contains personal fitness tracker from thirty fitbit users. Thirty eligible Fitbit users consented to the submission of personal tracker data, including minute-level output for physical activity, heart rate, and sleep monitoring. It includes information about daily activity, steps, and heart rate that can be used to explore users’ habits.

### Installing Packages & Importing Data
R Studio was used to complete this analysis. The files were imported into R Studio and the data frames were created with simplified names.


<img width="501" alt="Screen Shot 2022-12-12 at 12 40 44" src="https://user-images.githubusercontent.com/117751038/207121911-c72bddc7-02c3-4bc7-8b0b-9ac2340eb72a.png">


### Process

### Viewing The Files:

To ensure that the data frames were imported correctly,the colnames(), head (), and glimpse() functions were used to explore the data frames and find commonalities.


##### *daily_activity*:

<img width="536" alt="Screen Shot 2022-12-12 at 12 54 22" src="https://user-images.githubusercontent.com/117751038/207121977-fe13e24b-cfb2-4ee8-9dc5-66ce09674344.png">

<img width="987" alt="Screen Shot 2022-12-12 at 13 14 18" src="https://user-images.githubusercontent.com/117751038/207122683-54c1e278-919a-415f-8146-081263cc3eaa.png">


##### *daily_calories*:

<img width="991" alt="Screen Shot 2022-12-12 at 13 20 40" src="https://user-images.githubusercontent.com/117751038/207123875-dc316563-6c2b-4d65-86cb-8519518968ec.png">

##### *daily_intensities*:

<img width="990" alt="Screen Shot 2022-12-12 at 13 22 34" src="https://user-images.githubusercontent.com/117751038/207124124-2a38eff1-7a84-44ba-9478-de93132155a2.png">

##### *daily_steps*:

<img width="999" alt="Screen Shot 2022-12-12 at 13 23 26" src="https://user-images.githubusercontent.com/117751038/207124298-02f18e03-13d2-4e0b-8a5a-eaf0def30c56.png">

##### *heart_rate_sec*:

<img width="982" alt="Screen Shot 2022-12-12 at 13 24 38" src="https://user-images.githubusercontent.com/117751038/207124573-1d8cec51-5bcc-4533-9690-f30be76fe210.png">

##### *minute_METs*:

<img width="999" alt="Screen Shot 2022-12-12 at 13 26 24" src="https://user-images.githubusercontent.com/117751038/207124841-ec6834fb-1a85-42ec-88dd-8b3ee51c3d1c.png">

##### *sleep_day*:

<img width="978" alt="Screen Shot 2022-12-12 at 13 30 56" src="https://user-images.githubusercontent.com/117751038/207125775-efb2321b-219e-49d8-911b-e0590aa91402.png">

##### *weight_log*:

<img width="989" alt="Screen Shot 2022-12-12 at 13 33 00" src="https://user-images.githubusercontent.com/117751038/207126163-6d4030a0-3eee-4944-a2df-c7be94b916d3.png">

### Removing data frames:

All eight of the data frames contain the “Id” column, so it is possible to merge all of them if needed. The daily_activity data frame appears to contain data for calories, intensities, and steps. In order to use the daily_activity frame in place of daily_calories, daily_intensities, and daily_steps, the number of observations must be the same and the observations must match for each ID number.
The sqldf package is loaded to utilize SQL syntax to determine if the values of daily_calories, daily_intensities, and daily_steps are contained in daily_activity. Moreover, the number of columns must be the same between the data frames, so a temporary data frame with the important columns is created first.

<img width="455" alt="Screen Shot 2022-12-12 at 13 44 48" src="https://user-images.githubusercontent.com/117751038/207128932-c78dc60a-d1bf-401a-9cef-301ed265c221.png">

#### *daily_activity_2:*
<img width="506" alt="Screen Shot 2022-12-12 at 13 45 18" src="https://user-images.githubusercontent.com/117751038/207129058-92a79b90-d88e-4bef-9ff2-f23cd48402a0.png">
<img width="688" alt="Screen Shot 2022-12-13 at 07 13 27" src="https://user-images.githubusercontent.com/117751038/207601589-87e85241-624a-4c81-9945-a04236c93bdb.png">

#### *daily_activity_3:*
<img width="813" alt="Screen Shot 2022-12-14 at 07 50 06" src="https://user-images.githubusercontent.com/117751038/207601149-fcbfcbeb-ee4f-41a4-90eb-2a29b0973456.png">
<img width="777" alt="Screen Shot 2022-12-14 at 07 54 10" src="https://user-images.githubusercontent.com/117751038/207601222-1a80229a-848e-4d41-996a-aea037506a63.png">

#### *daily_activity_4:*
<img width="678" alt="Screen Shot 2022-12-14 at 19 02 50" src="https://user-images.githubusercontent.com/117751038/207741609-c958d42a-b37a-435f-8b12-9105c2f36f7e.png">

The returns of the head() function of the temporary data frames that were created, match the returns of the head() function for the original data frames. The returns of the head() function of the SQL data frames match the outputs of the head() function for the temporary data frames. 
The number of observations for each SQL data frame equal to 940. 
It can be assume that daily_calories, daily_intensities, and daily_steps data frames are contained in daily_activity. 
To simplify, these three data frames will be removed from the analysis.

### Analyze

### Summarizing the data:
The n_distinct() and nrow() functions are used to determine the number of unique values and the number of rows in a data frame.
<img width="407" alt="Screen Shot 2022-12-14 at 19 19 26" src="https://user-images.githubusercontent.com/117751038/207743422-cece5669-628b-4dd4-8006-a6c33e33975a.png">

Based on the n_distinct() output both the heart rate and weight log data frames contain low numbers of participants. Thus, reliable recommendations and conclusions cannot be made solely from these data frames.

*The summary() function is used to pull key statistics about the data frames.*


<img width="702" alt="Screen Shot 2022-12-14 at 19 33 37" src="https://user-images.githubusercontent.com/117751038/207745056-b063249b-0e67-4341-926e-e0f12bc72182.png">
The summary shows the average user is taking 7638 steps a day, missing the recommended 10,000 / 5 miles steps for health. Users are getting 21.16 minutes on averaege of very active or vigorous activity a day, this equates to 148.12 minutes a week. 
The CDC recommends 75 minutes of vigorous activity per week, so the typical Fitbit user is doing well in this area. However, participants are averaging 991.2 minutes, or 16.52 hours of sedentary time a day.
This can lead to other health issues because the body functions best upright. Scientists have determined that 40 minutes of moderate to vigorous activity a day will balance out the effects of sitting up to 10 hours a day. 
Furthermore, this summary shows the average user is burning 2304 calories a day. 
Studies show the average person in the population burns 1800 calories a day, but burning 3500 is needed to lose a pound of weight. 
The Fitbit users in this case are burning more than the norm, and are on track to lose a few pounds a week.

### *heart_rate*
<img width="315" alt="Screen Shot 2022-12-14 at 20 12 30" src="https://user-images.githubusercontent.com/117751038/207749768-a6278af7-4293-4070-b8d7-1a4f24606520.png">
The average heartrate of 77 beats per minute (bpm) which falls within the “normal” range. 
Normal is considered to be between 70 to 85 bpm for men, and 78 to 82 bpm for women. 
Women generally have better cardiac function and survival than do men in the face of cardiac disease; however, this is progressively lost when comparing postmenopausal women with age matched men.
However, research suggests that it is more important for individuals to determine what is a normal and healthy heartrate for them, and not compare to population levels. 
This is because resting heart rates between different people can vary by as much as 70 bpm. 
Thus, making heart rate a vital health characteristic to monitor.

### *minute_METs*
<img width="309" alt="Screen Shot 2022-12-15 at 20 17 15" src="https://user-images.githubusercontent.com/117751038/207999918-0787b10a-70e8-4752-92c3-5e8c97ecbbd4.png">

The summary of minute METs shows an average of 14.47 Met. A MET is the ratio of your working metabolic rate relative to your resting metabolic rate. One MET is the energy you 
use when at rest. This means an activity with a MET of four, would require a person to exert four times the energy they do when they are sitting. Therefore, a user averaging 14.47 MET 
throughout the day is considerably high, which could be assumed that the Fitbit is not calculating this data point correctly. Due to this, the minute MET data frame will not be 
used further in this analysis.

### *sleep_day*

<img width="517" alt="Screen Shot 2022-12-15 at 20 25 05" src="https://user-images.githubusercontent.com/117751038/208001005-8fe3d266-eda4-4cc7-9b60-de62c9febccc.png">

The summary of the sleep data displays the average user sleeps once per day for 419.5 minutes, approximately 7 hours. The CDC recommends 7 or more hours of sleep for adults in order to get 
the proper amount of rest. The average participant is spending 458.6 minutes in bed, or 7.64 hours. Meaning that the typical user is spending 38.6 minutes awake in bed. According VeryWellHealth,
If you cannot fall asleep within 15 to 20 minutes, you should leave your bed.This is called stimulus control. This will avoid insomnia. 

### *weight_log*
<img width="369" alt="Screen Shot 2022-12-16 at 07 06 47" src="https://user-images.githubusercontent.com/117751038/208094733-2bdb0ca1-1cc6-49e1-add4-f0d0c5df5491.png">

This data frame has a low number of participants, however, the average BMI is 25.19. This is considered an overweight BMI. However, 
BMI can be a screening tool and does not diagnose an individual's health.

### Share
<p align="center">
Plot 1
</p>
The ggplot() function was used to create the data visualizations that depict patterns and trends found in the data frames.
<img width="918" alt="Screen Shot 2022-12-18 at 21 05 08" src="https://user-images.githubusercontent.com/117751038/208424010-9247f3c6-2d0a-479f-882f-02ca51d2fd41.png">

<img width="815" alt="Screen Shot 2022-12-16 at 07 58 01" src="https://user-images.githubusercontent.com/117751038/208103674-9f25b800-0391-4c6b-b298-59c622ce65b0.png">
The display shows a positive relationship between total daily steps taken and total calories burned. The more steps the Fitbit users took, the more calories they burned.

<p align="center">
Plot 2
</p>
<img width="767" alt="Screen Shot 2022-12-16 at 07 38 38" src="https://user-images.githubusercontent.com/117751038/208100779-c528b222-28ff-4c6a-81b7-ce58a31ff0dc.png">

<img width="700" alt="Screen Shot 2022-12-16 at 07 52 01" src="https://user-images.githubusercontent.com/117751038/208103049-36417701-f9cd-4c37-b9f0-df25b612fd64.png">
This plot shows a positive trend between total distance and total daily calories burned. 
As the Fitbit users moved a greater distance, the number of calories they burned also increased.

<p align="center">
Plot 3
</p>
<img width="1076" alt="Screen Shot 2022-12-19 at 18 49 35" src="https://user-images.githubusercontent.com/117751038/208550208-f1bcd32b-ee8d-42b9-9a14-6532afe8b2f3.png">
<img width="616" alt="Screen Shot 2022-12-19 at 18 53 54" src="https://user-images.githubusercontent.com/117751038/208550382-f7151378-34ed-4a43-b127-91dd31aff480.png">

Plot 3 displays a positive relationship between total calories burned and very active minutes. 
This means that the more vigorous physical activity the participant does, the more calories they will burn.

<p align="center">
Plot 4
</p>
<img wid![minutes asleep](https://user-images.githubusercontent.com/117751038/208551527-cb4a0778-5228-48c0-b003-91df37d1de7e.jpeg)
th="954" alt="Screen Shot 2022-12-19 at 19 03 27" src="https://user-images.githubusercontent.com/117751038/208551477-a2ea968e-b11b-4999-894e-b0524b0dbcf3.png">

![minutes asleep](https://user-images.githubusercontent.com/117751038/208553707-198235af-698c-4451-9a39-a3bb0854d6f2.jpeg)

Plot 4 shows a positive relationship between total minutes asleep and total time in bed. 
The time participants spent asleep and the time they spent in bed was very similar.



### Act:
It is clear that Bellabeat has been successful by empowering women though providing data on their activity,  hydration levels, sleep, stress, and reproductive health. 
Based on analyzing how Fitbit consumers use and respond to features, recommendations can be made to promote further growth for Bellabeat.
The Bellabeat app should be completely transformed and regenerated. Instead of simply providing data on user’s health, the app should further encourage their users to meet 
fitness goals and become a social media platform to diversify their users. 

### Recommendations for Bellabeat app:
1. Enable social networking so users can post their favorite workouts, wellness tips, healthy meals, etc.
2. Enable users to add friends, view each other’s activity, compete with friends with fitness challenges and goals. 
3. Create more social media content to diversify their user platform.
4. Have health and fitness companies pay for advertising.
5. Have alerts to encourage users to get 10,000 steps a day. 
6. Have alerts to encourage users to get 7 hours of sleep a night. 
7. Recommend users get 75 minutes of vigorous activity a week and enable alert notifications to entourage users to meet this.
8. Encourage users to enter in weight and height to track BMI.
9. Allow alert notifications if user’s resting heart rate varies significantly from their normal.
10. If users are interested in losing weight, enable notifications to keep users on track to burn necessary calories to meet goal.

### Works Cited:
- "Role of Biological Sex in Normal Cardiac Function and in its Disease Outcome", August 2014,
   https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4190707/

- "How Many Steps Do I Need a Day?", December 2022,
   https://www.healthline.com/health/fitness-exercise/aerobic-vs-anaerobic#The-takeaway
   
- "Don't Lie Awake in Bed at Night", June 2022,
   https://www.verywellhealth.com/30-days-to-better-sleep-dont-lie-awake-in-bed-at-night-3969250






