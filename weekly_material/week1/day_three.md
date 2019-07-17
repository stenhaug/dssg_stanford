## DAY THREE:  Tidying the Platelet Data Part II

**Admin**:

 - Put in your Doordash lunch order by the end of the day (link in slack)
 - John Chambers will be speaking on Friday: think about what questions you might want to ask
 - Read the Data Privacy and Security document sent out via slack before tomorrow's session with Chiara


### Finish up the single directory data tidying task
We are finishing tidying the individual datasets.

Remember - there is data in `seed_data_hashed` you also need to include! Check for these files.

Once all of your data is tidy, save it on Nero. Other groups will be using it.
The data should be saved to: `/share/pi/dssg/platelet/collab_data/`

A couple things to focus on as you finish up:
 * **names** should be informative! of files, of functions, etc
 * the function takes as input one dataset and outputs another
 * you should have one file with this function
 * document the function! what does it do? what are the inputs? outputs?
 * how did you run it on all the data? provide this code
 * put all of the rest of your scratch code in a separate `sandbox_<group>` directory

Once it is all pushed to your branch on GitLab, put in a `Merge Request` for the code on your branch.

To refresh on instructions (and remember what we went over!), go back to yesterday's [page](day_two.md). 

### More git background
To review the git concepts we discussed yesterday, go [here](../../resources/git_gitlab_help.md).

### Collaborating on Coding Projects
Now everyone will pull from the `origin` on GitLab to their the `master` branch in their local repository.

Swap datasets with the other pair at your table and try using the functions the other group created to read in their dataset type. Does it work how you expect?
    * How could it be improved?
    * Submit one of these small improvements as `Issue` in GitLab!
        - Go to the side bar in platelet_processing repository and click Issues > New issues. Fill this out.

Resolve the `Issue` that the other group posted about your data.

Now let's all discuss some improvements and what we could have done better. 


### Creating the patient and aggregate datasets
Now we will divide into two groups: `patient` and `aggregate`. 

1. Within each group, talk through:
   * what fields are important from which data files?
   * how are you going to put the data together? what will you join on? (what type of join?) What tidyverse commands will you use?
   
2. Once your group has developed a plan, decide how you are going to collaborate and organize this in git. 

3. Join the data together - read in data from `collab_folder` and put it together
   - Make sure the output is exactly what you expect! 
        + how many rows do you expect to get based on the data and the overlap? how many do you get? 
        + make sure you are using the correct join and you know why you chose this  
        + are there NAs? where?
    - What initial patterns do you see in the output (if any)?


#### Look at the data
 * Do the trends you observed yesterday in a single day match what you see now?
 * What data is missing?
 * What new questions can you look at once the data is aggregated?

