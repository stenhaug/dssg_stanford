
## Technical Setup
Let's take a few minutes to make sure we are all on the same page in terms of technical set up. The technical mentors will be walking around - don't hesitate to reach out if you are stuck during this process!

General Note: Everything relies on two-step authentication, so don't forget your two-step device. If you dont want to use your phone, a really helpful option is a [hardware token](https://uit.stanford.edu/service/authentication/twostep/token), which you can pick up at the campus ID office.

### Accounts

#### Slack
We sent out invites to the slack workspace [stanford-dssg.slack.com]. We will be using Slack for communicating. Please let us know if you need us to resend the invite or have a problem accessing this.

#### Google calendar
DSSG is using a Google calendar to keep track of all program events.
It only works with gmail - so slack your gmail account to Emily in a message and then you'll get an invite. Double check you are able to add this to your calendar!

### Connecting to Nero
We will be using [Nero](http://med.stanford.edu/nero.html) this summer. Nero is a server for moderate-to-high risk data. We are using this server because the majority of the data we are using is medical data. We will talk more about this more in detail throughout the program. 

You should have received an email this morning welcoming you to Nero. The instructions from the email are summarized here.


1. Every time you connect to Nero, you **must** be on the Stanford VPN.

   * To set this up, you have to first install the Cisco VPN client. Instructions are [here](https://uit.stanford.edu/service/vpn/). Select your OS under the `Get Started` section to get detailed instructions on how to install and connect to the Stanford VPN on your operating system.
   * Connect to Stanford VPN.

2. Today - we're gonna check that you can access Nero in two ways:
    * **Web browser** (recommended):
       - Open a web browser
       - Login to Nero's Jupyter Lab: `https://nero.compute.stanford.edu`
       - Click the link for RStudio
       - In the future, this link should work to go directly to RStudio:
   `https://nero.compute.stanford.edu/user/<sunet>/rstudio/`
       - (If it does not, try to log in from Jupyter lab)
   
   * **Connecting via SSH** (this will be useful for submitting jobs in the future):
     - Open terminal and type:  `ssh <sunet>@nero.compute.stanford.edu` 
     - You will be prompted to sign in with your username and password (and two-step authentication)
     - This connects you to a login node, here you can look at the directory structure.
     - Before doing anything time or memory intensive at the command line you should start an interactive node. A simple way to do this is with the command: `srun --pty bash`
     - Try this, and then once the node has started, try loading R at the command line.
          - type in `module load r` to load R
          - then `R` to start an interactive R session.
          - *Tip: if you use 'ssh -Y' instead of just 'ssh' you will be able to view plots when they show up in R!*
     - In the future, we will go over how to submit jobs on Nero!

Note: We will be using R (and RStudio) for the majority of the program. While we recommend and will primarily be providing support for R, if you want to use other tools for specific tasks, that is ok.


#### Server directory structure

Let's get comfy with the Nero!

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






