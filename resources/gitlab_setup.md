
### GitLab setup

We have added all of you to GitLab:
1. Open `code.stanford.edu` in your browser (login with your Stanford credentials if prompted)
2. Make sure you have access to the `dssg_stanford` group: 
   - Go to `Groups` > `Your groups` and then click on dssg_stanford.
   - Within this group we have two git repositories:
     + `platelet_processing.git`
     + `dssg_stanford.git`
   - Click on and check that you can see these two repositories.
3. Now, let's set up Nero to connect to GitLab. Because Stanford GitLab uses two-factor authentication, we need an access token to authenticate.
4. In your browser, go to: [https://code.stanford.edu/profile/personal_access_tokens]
  - Fill in 'Add a personal access token', select 'api' for the level of access. Set the expiration date to '2019-12-31'. For the name, just select something to keep track of this.
  - Press the button 'Create personal access token'
  - The field `Your New Personal Access Token` will appear at the top of the page. **Copy** this token to a secure location on your laptop - e.g. somewhere where you store your passwords. You will need this to log on. 
  *Do not put this in your git repo or put it in a public location!*
  - At any point in the future if you want to get rid of this, you can just click 'revoke' next to the name of the token.

5. Now let's 'fork' the `platelet_processing.git` repository on 
*TODO FINISH*

6. Finally, let's test that this token works! Open up RStudio on Nero and switch to the terminal tab:  
  - Make sure you are in your home directory or a directory within home (not `/share/`!).
  - Type in: `git clone https://code.stanford.edu/dssg_stanford/dssg_stanford.git`. *This makes a copy of the existing git repository on Nero.*
  - Fill in your Stanford username and the access token we just created (do not use your Stanford password!). 
  - This should create a new directory `dssg_stanford` that contains the course material

7. Take a look at the contents of your forked repository in RStudio.
  - Go to 'File' > 'Open Project', and open the `dssg_stanford` directory 
  - This will load the project. Since it is coming from a git repository, you should have a `Git` tab on the top right. If you do not have this, grab a mentor for help!

8. Let's check you can push to your forked repository.
  - Go to the terminal within RStudio and type in: `git remote -v`
  The result should say 'origin' and list the site you cloned from.
  - Make an edit: put your name at the top of the README.md file.
  - Within the git tab in RStudio, check the box next to README.md (*this is the staging step or "add"*) and click `Commit`. This will open up a new window
  - Fill in a note about the commit - you can just call it `test` for now. Click `Commit`
  - *Note - we just followed the standard git workflow: modify, stage ("add"), and commit.*
  - Once this is set, switch to the terminal within RStudio and type in `git push origin master`. *This will push the code from your local repository's 'master' branch (what you just edited) to the 'origin' on Stanford GitLab.*
      - You will need to use the access token again every time you push.
   - Open up GitLab in your browser, and switch to this repository. Check that the change appears.
   - Yay! now you've pushed a change to GitLab. 


**Remember - do not commit data!** (the data stays on Nero! in '/share/pi/dssg')
