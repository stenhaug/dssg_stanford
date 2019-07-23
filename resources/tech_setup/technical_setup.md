
## Technical Setup
Let's take a few minutes to make sure we are all on the same page in terms of technical set up. The technical mentors will be walking around - don't hesitate to reach out if you are stuck during this process!

General Note: Everything relies on two-step authentication, so don't forget your two-step device. If you dont want to use your phone, a really helpful option is a [hardware token](https://uit.stanford.edu/service/authentication/twostep/token), which you can pick up at the campus ID office.

### Accounts

#### Slack
We sent out invites to the slack workspace [stanford-dssg.slack.com]. We will be using Slack for communicating. Please let us know if you need us to resend the invite or have a problem accessing this.

#### Google calendar
DSSG is using a Google calendar to keep track of all program events.
It only works with gmail - so slack your gmail account to Emily in a message and then you'll get an invite. Double check you are able to add this to your calendar!

#### GitLab
Sign up for Stanford GitLab - go to 'code.stanford.edu', click sign in on the top right and then log in. This will give you an account! We will use this later. :)

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









