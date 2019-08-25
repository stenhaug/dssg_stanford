
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


## Installing R packages on Nero

You cannot install R packages in RStudio at the R console or in the R Package GUI. There are two reasons for this:
  1. Rstudio tries and fails to open up a window with the menu to select which CRAN to download from
  2. You do not have write access to Nero's R packages - so the packages have to be installed locally.

To install R packages, open terminal:
```
module load r
R
> install.packages("<package_name>")
```
Select the CRAN session, and then wait for the package install to complete. If this succeeds, the R package is installed in your Nero home directory. This means that *you* have the package, but your teammates do not, they have to install it.

When you reload RStudio, you will be able to access the package.

If the package install does not succeed - this may be due to dependencies (particularly if the package depends on Java - which may be fixed by loading java first with "module load java", but may also not). If there is a problem, talk to a technical mentor.

See this [page](submitting_slurm.md) for instructions on how to submit jobs using SLURM.