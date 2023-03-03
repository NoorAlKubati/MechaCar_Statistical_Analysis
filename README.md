# MechaCar_Statistical_Analysis

## Part 1: Linear Regression to Predict MPG

This part of the project addresses the prediction of MPG from five independent variables. In particular, a linear regression model was created to answer the following questions:
1- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

2- Is the slope of the linear model considered to be zero? Why or why not?

3- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Analysis was conducted and the results are shown below.

![](https://github.com/NoorAlKubati/MechaCar_Statistical_Analysis/blob/main/Part%201.png)

As shown in the screenshot above, only vehicle length and ground clearance were significant predictors of MPG. Put differently, the effects of these two predictors were not random. This is due to the observed p-value of their coefficients. Interestingly, vehicle weight was approaching significance (i.e. below p < .05) but was not actually significant. Answering the second question, the slope is definitely not zero as there were at least two predictors that significantly explained the variance in MPG. Finally, I would argue that this model indeed predicts mpg of MechaCar prototypes effectively due mainly to the high R-squared value (Adjusted R-Squared = 0.68), which means that the model accounts for nearly 68% of the variance in the MPG.
