## Overview

The purpose of this project is to analyze data concerning AutoRUs' prototype, the MechaCar, to assist manufacturing team's production. To this end, we 
* utilize multiple linear regression to ascertain the variables that may predict the miles per gallon (mpg) of the MechaCar,
* employ summary statistics to determine whether suspension coils of manufacturing lots overall and individually meet design specifications,
* conduct one-sample two-tailed t-tests with a 95 % confidence level to deduce whether suspension coils of manufacturing lots overall and individually is significantly different from the population mean, and
* design a study for further research to compare performance of the MechaCar against any potential competitors.

---

## Resources

Data source:
    MechaCar_mpg.csv
    Suspension_Coil.csv

<!-- "pip show <software>" in command prompt to see pip install ver -->
<!-- pip show code from https://stackoverflow.com/questions/10214827/find-which-version-of-package-is-installed-with-pip -->
Software:
    R 4.1.3
    RStudio

---

## Linear Regression to Predict MPG
<!-- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? -->

The coefficients of the analysis yields the regression model (mpg) = (6.267e+00)*(1.245e-03) + (1.245e-03)*(vehicle_weight) + (6.877e-02)*(spoiler_angle) + (3.546e+00)*(ground_clearange) + (-3.411e+00)*(AWD) + (-1.040e+02). Based on the p-values in column Pr(>|t|) of the multiple linear regression analysis, independent variables vehicle length and ground-clearance provide a non-random amount of variance to the dependent variable mpg within the given dataset of MechaCar_mpg.csv.

The analysis suggests that there exists a high probability that we can reject the null hypothesis. In other words, the slope of the linear model is likely not zero. Notice the p-value that ascertains the significance of vehicle length on mpg is 2.60e-12 and the p-value that ascertains the significance of ground-clearance is 5.21e-08. Furthermore the r-sqaured value is 0.7149 and theoverall p-value of the analysis is 5.35e-11. These p-values are much lower than 0.05 or 0.001, which implies that the analytics team may reject the null hypothesis with a confidence level of 95% or even 99.9%. The r-sqaured value is higher than 0.49, which suggests a strong correlation present within the model and may be a beneficial predictor of data. 

Since only two out of five independent variables hold a significant relationship with the dependent variable mpg, the current model predicts the MechaCar prototypes less effectively than an updated model where the insignificant independent variables were removed. This a sign of overfitting and may fail to generalize or infer meaningful results from subsequent data.

mechacar_lm

mechacar_summary

---

## Summary Statistics on Suspension Coils
<!-- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? -->

Based on summary statistics, overall the variance of suspension coils of all manufacturing lots is 62.29356 pounds per square inch (psi). The variance of suspension coils of Lot 1 is 0.9795918 psi. The variance of suspension coils of Lot 2 is 7.4693878 psi. The variance of suspension coils of Lot 3 is 170.2861224 psi. 
The design specifications for the MechaCar suspension coils require that the variance of the suspension coils must not exceed 100 pounds per square inch. This implies that manufacturing lots overall meet the design specifications but individually Lot 3 does not.

total_summary

lot_summary

---

## T-Tests on Suspension Coils
<!-- Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary. -->

The sample mean of suspension coils in manufacturing lots overall compared to the population mean of 1500 psi yields a t score of 0.7149, 149 degrees of freedom (df's), and p-value of 0.06028. The sample mean of suspension coils in Lot 1 compared to the population mean yields a t score of 0, 49 df's, and p-value of 1. The sample mean of suspension coils in Lot 2 compared to the population mean yields a t score of 0.51745, 49 df's, and p-value of 0.6072. The sample mean of suspension coils in Lot 3 compared to the population mean yields a t score of -2.0916, 49 df's, and p-value of 0.04168.

Assuming a general 95% confidence level, in order to reject the null hypothesis which states that the sample mean is not significantly different than the population mean, the absolute value of t score (|t|) has to be greater than or equal to 1.984 with 100 df's, |t| has to be greater than or equal to 2.021 with 40 df's, and p-value has to be less than or equal to 0.05. Based on the t-test results, the sample mean of suspension coils in manufacturing lots overall and Lots 1 and 2 individually are statistically similar to the population mean. The sample mean from Lot 3 may be significantly different than the population mean.

psi_t-test

lot1_t-test

lot2_t-test

lot3_t-test

---

## Study Design: MechaCar vs Competition
<!-- Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test? -->

One metric that may be of interest is the environmental impact of manufacturing the MechaCar compared to any competitors. Assuming there are multiple competitors, we will utilize an analysis of variance (ANOVA) test to analyze all samples taken from different vehicles. The null hypothesis of an ANOVA test dictates that all sample means from various vehicles are equal. The alternative hypothesis states that at least one sample mean is different from the group. 
We may measure the environmental impact by observing quantity of hazardous waste produced during the manufacturing process and air or water quality around the manufacturing facilities. Most of these observations will likely be continuous numerical data.
