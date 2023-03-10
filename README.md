# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

This part of the project addresses the prediction of MPG from five independent variables. In particular, a linear regression model was created to answer the following questions:
1- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

2- Is the slope of the linear model considered to be zero? Why or why not?

3- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Analysis was conducted and the results are shown below.

![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%201.png)

As shown in the screenshot above, only vehicle length and ground clearance were significant predictors of MPG. Put differently, the effects of these two predictors were not random. This is due to the observed p-value of their coefficients. Interestingly, vehicle weight was approaching significance (i.e. below p < .05) but was not actually significant. Answering the second question, the slope is definitely not zero as there were at least two predictors that significantly explained the variance in MPG. Finally, I would argue that this model indeed predicts mpg of MechaCar prototypes effectively due mainly to the high R-squared value (Adjusted R-Squared = 0.68), which means that the model accounts for nearly 68% of the variance in the MPG.


## Summary Statistics on Suspension Coils

This part of the project is concerned with answering this question: "the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?"

Descriptive analysis was performed on the data as a whole and then on each subset of the data separately. Below, we could see the results of the initial analysis on the entire manufacturing data. According to the design specifications for the MechaCar suspension coils, the variance of the suspension coils does not exceed 100 pounds per square inch (var = 62.29).

![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%202.1.png)


Examining data on each manufacturing lot deparately, there was quite the disparity between the three lots, specifically lot three. Results show that while lots one and two fall significantly below the design specifications for the MechaCar suspension coils (.98 and 7.47, respectively), lot three's variance of the suspension coils is almost double that (var = 170.29). This tells us that manufacturing lot number three does not meet this design specification (below).
![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%202.2.png)


## T-Tests on Suspension Coils

This part of the project is set to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. A one-sample t-test was conducted to see if that is the case (Below).
![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%203.1.png)

Results show that the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch (p > .05). However, further analysis was conducted to see if the PSI in one of the manufacturing lots is statistically different from the population mean of 1,500. Three t-tests were conducted on the three subsets of the data for each manufacturing lot. In summary, the only manufacturing lot whole PSI was statistically different from the population mean of 1,500 was lot three (results below).
![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%203.2.png)
![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%203.3.png)
![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%203.4.png)

## Study Design: MechaCar vs Competition

In this proposed study design, we will compare MechaCar vehicles versus other vehicles from the competition. In particular, we would like to narrow down the variables that we will collect and study. Primarily, we need to study what impacts the customers intention to purchasing the vehicle. Six variables come to mind: price, level of luxury, fuel consumption, safety rating, reliability, and horse power. The price variable is apparently a continuous variable. Level of luxury, fuel consumption, safety rating, reliability could be collected from customers based on a likert-type scale from 1 through 10. Finally, the horse power of each car will be entered into the data. The purchase intention of the customer will be a likert-type variable from 1 to 10.
The null hypothesis is that there are no preference among customers between MechaCar vehicles and the compitition based on these variables. The alternative hypothesis is that there is a preference among customers between MechaCar vehicles and the compitition based on these variables. To test this hypothesis, a linear regression model will be utilized to see which manufacturer is better preferred. Data collected randomly from potential car buyers will be collected online in a self-reported survey.
