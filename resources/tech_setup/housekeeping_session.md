## Housekeeping session

Everything is on GitLab and Google Drive for now!

Now, let's move things around to make it consistent.

### Moving things around in GitLab
Individual activities will be done in GitLab in the relevant repository in your branch. 

We need to move a couple files into the `platelet_processing` repository.

0. Switch to your branch and make sure you pushed your code from this morning.
  `git push origin <your_branch>`

1. Pull from master to make sure you are up-to-date
  `git pull origin master`
  - You may have to resolve a merge conflict - this is ok. 

2. Tidyr intro: move `tidyr_intro.Rmd` into `activities/tidyr_07_16/tidyr_intro_<sunet>_07_16.Rmd`

3. Move code from yesterday into `activities/eda_07_22/eda_qs_<sunet>_07_22.Rmd`
    
4. Push the code to your branch:
  `git push origin <your_branch>`

5. Put in a merge request on GitLab.

6. Remove the `course_materials` repository because it is now redundant. Go to the repo in GitLab, then go to Settings >  Advanced > Remove repository (and fill in the repository name to remove it).

Now it's time to get a copy of this repository:
1. `git clone https://code.stanford.edu/dssg_stanford/dssg_stanford.git`

2. Now create your own branch and switch to it
   `git checkout -b <sunet>`
You will use this to do later analysis.

### What branch should I be working on?
* Your own task or exercise? your branch
* A shared task? a group or shared branch

### File naming conventions
Informative names matter!

* Your own files: these are files you work on for one day. The names should be informative and followed by "<sunet>_<date>"
* Shared notebooks/scripts: these are files you work on with others. The names should be informative. 


