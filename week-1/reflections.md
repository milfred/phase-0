#phase-0 Reflections

##1.1 Think About Time

I decided to research “The Power of Meditation.” It’s something I’ve been thinking about incorporating into my daily routine, so it made a lot of sense to learn more about this.
“Time Boxing” is the practice of blocking out periods of time to work on specific tasks rather than working through a task from start to finish regardless of how long that might take.
Currently, the time management skill I use the most is to work on the tasks I enjoy the least and are the most time sensitive first thing in the morning when my focus is the best. This strategy works pretty well for me in a work environment. I plan to use this strategy at DBC, but I think I’ll need to employ other strategies as well. Other time management I plan to use during Phase 0 are:
  - Avoiding distractions. I plan to work at the library when possible. I also use a set of sound isolating headphones and classical music to maintain focus in my busy home.
  - Take breaks.
  - I find that setting reminders on my phone helps me remember and complete tasks better. I plan to employ this during Phase 0 when appropriate.
  - Schedule my day out. I am going to block out time for Phase 0 tasks as well as other beneficial activities like exercise.

##1.2 The Command Line

A shell is a program or interface that allows a user to interact with a computer. Bash is a Unix shell.
The most challenging thing for me is determining which situations call for a pipe or a redirect. I am also struggling with xargs. I researched this and don't have a sound understanding of how it's used yet.
I was able to use all of the commands and feel pretty good about most of them. Some will require more repetition for me to get comfortable with.
Since this course is intended to give a beginner the essential basics, most of the commands in the lesson seem important. Obviously I will need commands like cd, ls, mkdir, and rm to navigate. However, I think that, with more experience, commands like greps and xargs combined with pipes and redirecting are the things that will make the terminal feel like a really powerful tool.
  - pwd: print the working directory 
  - ls: print a list of the contents of the working directory 
  - mv: move a file or directory 
  - cd: change directory 
  - ../: move up one level 
  - touch: create an empty file 
  - mkdir: create a new directory 
  - less: open a text file and scroll through it page by page (move down using the space bar and up with "w") 
  - rmdir: delete a directory 
  - rm: delete a file 
  - help: view a list of commands and their definitions (can be used to look up specific commands using this syntax help CMDNAME)

##1.4 Forking and Cloning

To create a new repository:
- Login to your GitHub account
- On your profile page, click the “+” icon next to your avatar at the top right of the page and select “New repository”
- Enter a repository name, choose “Public” or “Private” depending upon your needs
- Choose a license if necessary and click “Create repository” (see this website for more information about licenses: http://choosealicense.com/)
To fork a repository:
- Go to the repository page on GitHub and click on the fork icon
- Choose what account to fork the repository to and you’re done
To clone a repository to your local machine:
- Go to the repository page on GitHub and copy the repository url
- Open the terminal and navigate to the directory you want to clone the repository to
- Type “git clone http://PASTE-REPO-URL” into the terminal and hit enter
A developer might fork a repository if they disagree about what direction a project should take or just want to try different things with the project for fun. In the case of Dev Bootcamp, providing repositories for students to fork and work on is a good way to distribute coding challenges for educational purposes.
Setting up git and GitHub initially went fine for me. While I was practicing creating and cloning repositories I couldn’t figure out how to delete the .git directory from the terminal.