# Git Definitions

**** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    * **Version control is a tool that helps developers manage changes to source code over time. It allows you to track progress, review and revert changes, and create backups for your code. Developers can view the entire history of revisions to one or more files, test new code for bugs, and merge revisions or new features into the original source code. If a mistake is made, developers can go back and compare earlier versions of the code to help fix the mistake. It protects source code from unintended consequence or catastrophe.**
    * **Software developers usually work in teams and are continually writing new source code and changing existing code. One person may be working on a fix for a bug and another person may be working on a new feature. Changes made in different parts of source code are happening simultaneously and may be incompatible. When these features need to be merged, version control helps by tracking a complete history to every change in every file by each contributor and helps discover and prevent conflicts.** 

* What is a branch and why would you use one?
    * **Another benefit of Version Control is branching. A branch is an independent line of development. Multiple streams of work can be kept separate from each other and then can be merged back together at some time in the future.  It is basically a brand new working directory, staging area, and project history.**

    * **By developing code in branches, you can work on multiple features or changes simultaneously, but also keep the master branch free of questionable code. If you want to add a feature or fix an issue, a new branch makes sure these changes do not affect the main code base and it gives you the opportunity to work out bugs before you actually commit the changes back to the main file.**

* What is a commit? What makes a good commit message?
    * **When you commit a set of files and folders, you are making a save point for the project.  A save point will never change unless you explicitly ask it to. The commit message describes this save point for future reference. A good commit message is detailed and states what was changed since the last commit. Typically, it is standard to summarize the entire commit on the first line in less than 50 characters, leave a blank line, then add a detailed explanation of what has been changed.** 
    
* What is a merge conflict?
    * **A merge conflict occurs when you try to merge two branches that both have changes to the same part of the same file.  If two people changed the same lines in that same file, or if one person decided to delete a section and the other person modified it, there will a conflict. Git won’t know which version to use and you have to resolve the conflict manually.**
    * **To resolve a merge conflict you should reach out to your teammate or colleague to figure out what happened.  Once you figure out what should be the correct modification, you can use Git to resolve it.  Git marks the conflicted area of the file with "<<<<<<< HEAD" and ">>>>>>> [other/branch/name]". The two conflicting changes are separated by “=======”.**
    * **Once you know what change should be kept, you can delete the wrong line and all the Git marks, making sure the file looks exactly how you want it. Then you can do a regular git add and commit the change with a new commit message.**