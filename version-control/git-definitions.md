# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  Version control allows us to view the entire history of revisions to one or more files, and merge revisions make by different people.
  It is useful because if someone commit code that causes the program to break, it can be reverted back to a previous build that works. Also people can edit the same file at the same time. Also useful because track changes allows you to pinpoint who made each change so you can discuss it with them, or ask questions.

* What is a branch and why would you use one?
  A branch in Git means you diverge from the main line of development and continue to do work without messing with that main line or a lightweight movable pointer to one of these commits.
  Using branch can preserves the working condition the clean condition of Master. If we work on a team of more than one person like 300 people you aren't going to be running into these issues of sudden changes in the code base under your feet.

* What is a commit? What makes a good commit message?
A commit is a save points in Git.
A good commit message is detailed and states what was changed since the last commit.

* What is a merge conflict?
When workign with a "version control systm" such as CVS, SVN or GIT, merging is a daily task. Your developer colleagues also work on their features and commit code. To keep your local version up to date you need to "pull" and "merge" their work on a frequent basis. Merge conflict may occur if competing changes are made to the same line of a file or when a file is deleted that another person is attempting to edit.