
## Nero directory structure

Let's get comfy with Nero! Open up terminal. 

We will be using bash commands to take a look at the directory structure. If you're not familiar with bash, the main two commands you need today are:
   * `cd` to change to a directory
   * `ls` to list files within a directory
   
If you are interested, here is a quick bash essentials [cheat sheet](https://gist.github.com/raineorshine/9898350#file-bash-essentials-sh). We will be going over this and other bash commands in more detail as you need it.

Directory paths:
 * `/home/<sunet>/` or `~`: this is your home directory. This is where you want to work on your code. Only you can access this directory.
 * `/share/pi/dssg/` - this is the location for all DSSG shared folders. Within this directory, there will be some educational materials (under `materials/`, we will use this tomorrow), and the project directories
  * under `platelet/`, we have the following:
      - `input_data/` - this is where the data is located. Note - you can only **read** from this directory, you cannot **write** to it.
      - `collab_files/` - this is for you and other students to put collaborative folders, you can **read and write** to this directory. Feel free to create folders here for the different parts of the project and tasks.
      

Now you're set up to start looking at data!


## Getting situated on Nero at the command line

See Nero [documentation](http://nero-docs.stanford.edu/index.html) for more information. This information is under the software tab.

Nero already has many modules installed
 * Use `module avail` to list available modules.
 * Use `module spider <name>` to search for a module.
 * Use `module load r`


## SLURM and Submitting Jobs on Nero

Sometimes, an operation takes too long or two much memory to run in RStudio.

Depending on the operations, an easy way to do this is to submit a script to Nero.

#### R SCRIPT
Convert your code to an Rscript. Make sure it runs on a small dataset.

#### SUBMIT SCRIPT

To submit a job, we want to specify the parameters of the job - how much memory and time the job will take. 

Start a bash script - this is just be a text file with a .sh suffix. (Bash is a shell/command line language, it is what we type into terminal.)

```
#!/bin/bash
#
#SBATCH --job-name=test
#SBATCH --err=test.err
#SBATCH --out=test.out
#SBATCH --time=10:00
#SBATCH --memory=1000

module load r # we need to load R to be able to use it
Rscript <my_script.R>

```

#### SUBMITTING
Run `sbatch <submit_script.sh>`.

Then type in `squeue -u <your_sunet>` to make sure the job submitted.

After the job completes, you will have error and output files to view. 