## SLURM and Submitting Jobs on Nero

Sometimes, an operation takes too long or two much memory to run in RStudio.

Depending on the operations, an easy way to do this is to submit a script to Nero.

#### R SCRIPT
Convert your code to an Rscript (if you have Rmarkdown, then you can do this with `purl`).
Make sure it runs on a small dataset at the command line using

`Rscript <my_script.R>`

#### SUBMIT SCRIPT

To submit a job, we want to specify the parameters of the job - how much memory and time the job will take. 

Start a bash script - this is just be a text file with a .sh suffix. (Bash is a shell/command line language, it is what we type into terminal.)

Here is an example - you will want to adjust time, cpus, and memory based on your task.
Also, choose informative job and test names.
```
#!/bin/bash
#
#SBATCH --job-name=test
#SBATCH --err=test.err
#SBATCH --out=test.out
#SBATCH --time=1:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=16G

module load r # we need to load R to be able to use it
Rscript <my_script.R>

```

Note: if you want to run this with a conda environment, add this to the line before the Rscript line.
`source activate <my_env>`

#### SUBMITTING
Run `sbatch <submit_script.sh>`.

Then type in `squeue -u <your_sunet>` to make sure the job submitted.

After the job completes, you will have error and output files to view. 