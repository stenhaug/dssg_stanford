### Steps for troubleshooting a Nero problem

**Note: if you get stuck for more than 15min on this, or get repeatedly stuck, please grab a mentor! We can help or poke Nero folks.**

**We are providing this as a reference, please grab us to help you work through!**

The main issues that you will run into with Nero are:
 1. Connection issues
 2. Memory issues
 3. Time out issues

#### When it breaks
When you get the Status 500 error:
- restart with the [hub](https://nero.compute.stanford.edu/hub/home) link.
- if this does not work, you can try restarting your browser, and trying again

A couple other notes:
- Make sure you are on the VPN.
- Make sure your home directory is not FULL or close to full! (See section at the end)


#### Getting a clean start
Then open up your workspace:
  - Do you have anything loaded into RStudio?
     - Clear your Environment and your Console
  - In general, you should not be saving your workspace. This means that every time the project loads, it has to load what you have in there. For some notes / explanation of why - see Hadley's description [here](https://r4ds.had.co.nz/workflow-projects.html).
    - Go to settings, and instruct it not to save! (this will take care of the previous problem)

#### Figuring out the problem
Nero's error messages are not informative, we are going to complain to them about this, but we still need to sleuth a bit.

(The following refers to troubleshooting in Rstudio.)

What analysis broke? 
 - Use `profvis` 
 - Run it with a small fraction of the data (1/20, 1/10, etc) the command `sample_frac` is your friend!
 - Look at the output profile 
  - is it taking a lot of memory?  or a lot of time?
 - Try running with slightly more data

EXAMPLE (thank you **eguthrie**!)
```
require('profvis')
require('tidyverse')

sim_data <- function(nrows){
  tibble(
    x = rnorm(nrows, 0, 1) # sample from a std normal 
  )
}
res <- do.call(cbind, lapply(1:20, function(x) sim_data(300000)))
colnames(res) <- sapply(1:20, function(x) paste("x",x, sep=""))
res <- res %>% mutate(
  "y"=sample(c(0,1), 300000, replace=TRUE)
)

profvis({
  glm.fit <- glm(formula = (y ~ .), 
                 data =res %>% sample_frac(0.1), 
                 family = binomial)
})


save(glm.fit, file="~/myfit.RData")

```
This shows 80 MB was allocated (40 MB deallocated) in memory and it took 270 ms. More info on profvis [here](https://rstudio.github.io/profvis/).

Memory for profvis is in MB - you want to watch out once it gets to the GB size, esp when it's a fraction of the data. 
My reaction: this is not much memory, but it is a little slow.

If it's a memory issue, you may need to investigate using another command, or making sure not to create copies of your data in the process.

Many of these issues can be helped by submitting jobs via SLURM - see instructions [here](submitting_slurm.md). Remember, start with a portion of the dataset and make sure this works. **Grab us to help you figure out how to configure this and what to do!**


#### Avoiding problems
 - Clear your workspace often
 - Do not load on opening
 - Work with a fraction of the data first! If it works, re-run with more of the dataset
 - Use caffeine or `pmset noidle` to avoid time outs/disconnecting from Cisco + Nero, [info here](http://osxdaily.com/2011/03/21/temporarily-prevent-a-mac-from-sleeping/).
 - Make sure your home directory is not close to full! (see below)
 
#### Home directory clean up

Nero does not give us much space in our home directories. You should not have anything other than your gitlab repos (and possibly some packages here). If it's full or close to full, your Jupyter container may have trouble starting.

To check this, type in this at the command line:
 `df` ("df"=disk-free)
and look at your home directory. I'd try to keep it below 80-90\%.

To see where the memory use is, type in:
 `du -sh * `  
 ("du"=disk-use, "s"=summarize "h"=human-readable "*"=everything)

Then delete what you don't need or move to the shared directory. 

If you cannot get to the terminal within Jupyter, you may have to ssh on to Nero.
   `ssh <user>@nero.compute.stanford.edu`
   