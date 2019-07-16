
## DAY TWO: Tidy data, Loading and Joining

### Workflow set up

#### Version Control
We will be using git on Nero and Stanford hosted GitLab this summer.
 * [Background](../../resources/git_gitlab_intro.md) on git and GitLab
 * [Instructions](../../resources/gitlab_setup.md) for setting up GitLab 

#### RMarkdown
RMarkdown documents help with reproducible analysis of code. They're similar to iPython (or Jupyter) notebooks, and include sections of text interspersed with code "chunks" and the output of running those chunks.

Within your local `course_materials` directory, open up the `week1/tidyr_intro.Rmd` file. To create new Rmarkdown files, go to File > New File > Rmarkdown.

Press the `Preview` button to render to HTML. This creates a pretty output HTML page with your notes, code, and the output of running your analysis.
*Note - you should track only the .Rmd file, not the HTML file im git.*

We encourage you to use RMarkdown in your work!

### Data processing - tidyr introduction
Let's go through the activity in `week1/tidyr_intro.Rmd` now!

### Individual Datasets
Yesterday in pairs, you summarized each of the four types of data (`census`, `cbc`, `inventory`, `transfused`) and looked closely at one day - `day19`. Now it's time to put together all the data from the directory. We are going to use the skills you just learned to do this.

First, let's set up a git for this. We will all be working with the platelet data - so let's all clone the `platelet_processing` repository from the group GitLab. (Note: here we are not forking and then cloning, we are just cloning.)

First, in your pair, have someone create a branch (e.g. 'cbc', 'census', etc.) using the plus button. *This only should be done once per pair!*. You will be collaborating on this branch.

Clone platelet_processing to your directory on Nero (refer to the GitLab Setup [Instructions](../../resources/gitlab_setup.md) as needed. 

Switch to the branch you are working on using:
 `git checkout <branch_name>`
 
This is where you will add the files for processing your data. 

#### Write a function to read in all the data
Many of the datasets have data in the `seed_data_hashed/` directory. Look for your files here, you will need to read this in too! (Note many of these days are negative!)

Write a function to read in an individual file of your file type and turn it into a tibble. Which fields do you want to extract?

As you work on this function, commit it to your local platelet_processing repository.

Test that this function works on a couple different files, make sure it is performing as you expect!

Try to read in ten files at a time. Can you do this?
We'll help you get this to work for all the files in a bit.

#### Look at the data
 * Do the trends you observed yesterday in a single day match what you see now?
 * What data is missing?
 * What new questions can you look at once the data is aggregated?

#### Sharing your code
At the end, we'll have you push the code to GitLab so that everyone can access this!

### Putting data together across datasets

#### Full group activity - how do the datasets fit together?
We will use the board to talk about how the data are linked together. Each group will put up a couple summary/important fields, and we will draw lines between the different tables.
 - What are the keys? 
 - What are the unique identifiers? 
 - How would you put it together?

#### Small group activity - set up a join!
Now we will divide into two groups: `patient` and `aggregate`. These represent two ways of looking a the data. Here are some guiding questions to help understand the intuition behind these two groups:
 - `patient_trajectories` 
    + what patient features are related to platelet transfusion? 
    + what does a patient trajectory look like?
 - `aggregate_data` 
    + what hospital population counts are predictive of platelet transfusions?
    + how do hospital patterns change over time?
    
1. Within each group, talk through:
  - what fields are important from which data files?
  - how are you going to put the data together? what will you join on? (what type of join?)
  - what fields will you create?
  
2. Once your group has developed a plan, let's get going on the code to execute this!
   - Start with data from a couple days (days 20-22) to test your code
   - Make sure the output is exactly what you expect! 
        + how many rows do you expect to get based on the data and the overlap? how many do you get? 
        + make sure you are using the correct join and you know why you chose this      
        + are there NAs? where?
    - What initial patterns do you see in the output (if any)?
3. We can then extend this to the rest of the data files. 

... now we can ask some EDA questions!
   

