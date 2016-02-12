#1.5 Tracking Changes - Reflections

How does tracking and adding changes make developers' lives easier?
It allows all of the contributors to a project a convenient means to communicate changes and keep their local repositories up to date. It also provides a history of all changes made to the project.
What is a commit?
A commit creates a new revision or save point of the local git repository.
What are the best practices for commit messages?
A commit message should read like a command. It should also be as verbose as possible in describing the changes that were made.
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
To create a pull request, make sure you have pushed the your branch to  you enter "git pull origin master" into the terminal.
Why are pull requests preferred when working with teams?