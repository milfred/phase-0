#1.5 Tracking Changes - Reflections

How does tracking and adding changes make developers' lives easier?
It allows all of the contributors to a project a convenient means to communicate changes and keep their local repositories up to date. It also allows them to work on a project at the same time without conflict or the risk of files being overwritten by someone else by accident. It also provides a history of all changes made to the project. This provides a safety net in case you need to restore a previous version of a file or even the entire project.
What is a commit?
A commit creates a new revision or save point of the local git repository. This commit includes all of the changes you've made to files or directories since your last commit as a single action.
What are the best practices for commit messages?
A commit message should read like a command and be written in the present tense. It shouldn't be longer than 50 characters and the first letter of the message should be capitalized.
What does the HEAD^ argument mean?
The HEAD arguement refers to the current commit you are working on. HEAD^ refers to the previous commit.ls
What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three states of a git change are:
  - Working: a working or modified file is one that has been changed, but not added to the staged files for the next commit
  - Staged: a staged file has been added to the next commit using the "git add" command
  - Committed: this a file that has been committed to your local repository using the "git commit" command
Write a handy cheatsheet of the commands you need to commit your changes.
Starting from the beginning you would need the following commands:
  - git checkout -b NEW-BRANCH-NAME (this creates a new branch for your working files and switches you to that new branch)
  - git status (check the status of )
  - git add FILE-NAME or DIRECTORY (adds changed file or files to the commit)
  - git commit -m "commit message" (commits changes and adds commit message)
What is a pull request and how do you create and merge one?
To create a pull request, make sure you have pushed your branch to the repository on GitHub. You then initiate a pull request on GitHub. After you create the pull request, GitHub will then prompt you to merge your branch with the master.
Why are pull requests preferred when working with teams?
Using pull requests gives another developer the oppotunity to review the your code before it is merged. This allows the master branch to always be a clean and working version.