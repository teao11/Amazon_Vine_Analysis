# Amazon_Vine_Analysis

# Overview
To demonstrate our knowledge of big data by using pyspark, aws rds and postgres to complete an ETL and provide analysis.

# Results
In my analysis, I have begun to analyse the total number of reviews, the number of 5-star reviews, and the percentage 5-star reviews are calculated for all Vine and non-Vine reviews.

I elected to utilize SQL to complete this analysis, and you may find the query in the github repository. The results are found below:

<img width="250" alt="Query Results" src="https://user-images.githubusercontent.com/46773181/136511848-c149ffe4-6c32-4f83-be0f-3cdb7ed90ea2.png">

There were a lot more non-vine reviews than vine reviews (7750 vs. 43). There were only 43 vine reviews to 7750 non-vine reviews. When looking at percentages, 32% of the vine reviews were five stars whilst 51% of the non vine votes were five stars.

# Summary

It does not seem to be a bias for yes' in this analysis, however we would likely need to gather more insights on yes' to have a fair comparison given the volume of no's.
