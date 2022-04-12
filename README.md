# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The screenshot below includes the outpout from the linear regression analysis, including the p-value and the r-squared value determined via the summary function. 

![](/Images/linearregression.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The vehicle_length and ground_clearance variables both provide a non-random amount of variance to the mpg values as indicated by the significance level. The intercept is also significant.

- Is the slope of the linear model considered to be zero? Why or why not?

The slope is not zero because the overall p-value is significant (5.35e-11, smaller than 0.05). This suggests there is a significant linear relationship between the variables and they are not determined by random chance.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes, with an R-squared value of 0.7149, the linear regression model explains 71% of the data. Generally, an R-squared value above 0.7 would be considered to show a high level of correlation.

## Summary Statistics on Suspension Coils

The following screenshot represents the total summary dataframe:
![](/Images/totalsummary.png)

The following screenshot represents the lot summary dataframe:
![](/Images/lotsummary.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Review of the lot summary dataframe demonstrates that the variance for lot 3 is greater than 100 pounds. While the variance in the total summary data frame and the variance for lots 1 and 2 are all under 100 pounds, the greater variance in lot 3 indicates that the current manufacturing data does not meet this design specification for lot 3.

## T-Tests on Suspension Coils

![](/Images/Overallttest.png)

![](/Images/Lot1ttest.png)

![](/Images/Lot2ttest.png)

![](/Images/Lot3ttest.png)


## Summary 

