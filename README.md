# MechaCar_Statistical_Analysis
The purpose of this analysis is to assess AutosRUs' newest prototype, MechaCar, and specifically to understand production problems hindering overall progress. The following will be incorporated into the analysis: 
- A multiple linear regression analysis in an effort to understand which variables predict the mpg of the MechaCar prototypes
- Collection of summary statistics on the pounds per square inch (PSI) of the suspension coils from each manufacturing lot
- T-tests to determine which, if any, manufacturing lots are statistically different from the mean
- Design of a statistical study to compare vehicle performance for the MechaCar prototype against vehicles from other manufacturers

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

The first image below shows the overall t-test results, which compares the PSI across all manufacturing lots to the standard of 1500 PSI. Based on the results, there is no evidence that the overall mean PSI is statistically different from the standard PSI. 

![](/Images/Overallttest.png)


The following three images show t-test results by lot in comparison to the industry standard of 1500 PSI. The results for Lot 1 and Lot 2 do not demonstrate any statistical significance and there's no evidence to suggest a difference between the PSI in these lots and the industry standard. However, the t-test results for Lot 3 include a p-value of 0.04168 and this value is statistically significant. This suggests that the mean PSI value in Lot 3 is significantly lower than the 1500 industry standard value. 

![](/Images/Lot1ttest.png)



![](/Images/Lot2ttest.png)



![](/Images/Lot3ttest.png)


## Study Design: MechaCar vs Competition
### Description: 
The purpose of this study is to compare the performance of the MechaCar prototype against the performance of vehicles by other manufacturers. We know that our customer population puts significant value in safety rating, so this metric will be a key area of focus. 
- Null hypothesis: MechaCar has the same safety rating as the competiton.
- Alternative hypothesis: MechaCar has a higher safety rating than the competition.

In order to test this hypothesis, the study will incorporate a one-sample t-test which will help us identify if there is a statistical difference between the mean of the Mechacar safety ratings and the mean of the rest of the vehicles' safety ratings. This will safety rating data, and means, for both the MechaCar model and for key competition. The significance level selected is normal at 0.05, which means there is a 5 in 100 probability of being wrong. This means that if the p-value is less than or equal to 0.05, the null hypothesis will be rejected and we will find significant difference in safety ratings for the MechaCar vs. the competition. 

