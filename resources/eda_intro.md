## Exploratory Data Analysis
### 7/22/2019

The goal of Exploratory Data Analysis is to better understand the variables, their distributions, and their relationships.

On Friday, Ben went through some example exploratory data analyses of the platelet data. The code for this is located [here](https://code.stanford.edu/dssg_stanford/platelet_processing/tree/master/exploratory_analysis) (if your platelet_processing repository is up-to-date, then you will have this locally!). We highly recommend following Ben's suggestion of having two files for this (one "full" that contains all the code you run and one that contains the final EDA analysis and comments).

EDA is often divided into four categories:
 - univariate and bivariate 
 - graphical and non-graphical
This just means considering the variables by themselves and their relation to each other. We will be doing this below.

We'll come up with qs as a group to explore the data!
The questions will be listed [here](https://docs.google.com/document/d/1tYT1M6zcNxyzjfQLplrZmXzV0iXPiCw0BKxGggEPO7M/edit).

Work through your question. The output of your work will be an .Rmd file with insights, plots, and comments. Your code should be located in your own forked course_materials repository, and must be pushed to GitLab (remember: do not push .html output or data to GitLab).

### EDA for your features

Discuss as a group:
 * What is the question your groups is focusing on?
 * What is the outcome of interest?
 * What are the features?

Now let's go through the following steps with these features.

*What are we missing from the qs we came up with?*

(You may want to divide the features up among group members)

0. Understand your data
  - make a list of variables
  - are there duplicates? remove!
  - what is the range?
  - what are the data types?
  - how do we describe each column
1. Check for missing data + other mistakes
   - Is there something confusing? Do you suspect an error?
2. Document! Make sure the data you input
3. Look for extreme values. Outliers? Anomalies?
  - boxplot, histogram, scatterplot
4. Check assumptions/distrubtions
5. Identify influential variables 
  - how do the variables relate to your outcome of interest
6. Look at correlation structure 
  `pairs()` is very helpful here! As are facet_graphs!
7. Variable transformations
  - averages, binning

During this process, you may need to reload the data and will need transform it. Make sure to keep all of your code so this is reproducible! You will likely have to re-run a lot of this again.

Also, if you run into unexpected things in the data, make sure to document in the DataAnomalies and DataQs files in the [platelet directory](https://drive.google.com/drive/u/3/folders/1n8nHCkGfctX7iPJfWo1N06dgoRBcnBtI). The goal of this is to have a central place to document insights and questions to raise with Tho. 

The output should be both visualization and summary statistics. NOTE: the point is not to make pretty graphics, it's to understand your data! However, this task represents an opportunity to try out some ggplot commands and start getting comfortable!


**HELPFUL REFERENCES**
 - EDA steps are discussed in Chapter 7 of [R For Data Science](https://r4ds.had.co.nz/exploratory-data-analysis.html)
  - [Tidyverse data transformation](https://teachingr.com/content/the-5-verbs-of-dplyr/the-5-verbs-of-dplyr-exercise.html) is a great resource from Ben
  - Visualization help with ggplot: see Chapter 3 of [R For Data Science](https://r4ds.had.co.nz/data-visualisation.html) and the ggplot [cheat-sheet](https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf). We recommend working through some of the ggplot examples in the R for Data Science workbook.