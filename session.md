# Git Holy Wars Demystified

@emmajanehw
www.gitforteams.com


# Agenda

- Repository architecture -- files to include, and omit
- Branching patterns -- what they are, and how to choose one
- Maintenance strategies -- how to keep your local repository up-to-date
- Access control -- ensuring the right people have the write access


## The Good

Git truths you need to internalise:

- Git is a very good content tracker for text files.
- Git is very fast compared to centralized VCS.


## The Bad

Git core will not solve all of your problems:

- Git is not a dependency manager.
- Git takes whole file snapshots and is not optimised for tracking binary files.
- Git does not include in-repository access control.
- Git becomes slower as your history gets very, very large.

NOTE: This means versioning binary files and having very long histories (10k+ commits) will cause Git to become slow.


## The Ugly

Git is notorious for its "holy wars".

This makes it seem very complicated and hard to learn.

This presentation unpacks the rationale behind the most common arguments.


----
# Repository Architecture


## Dependency Management

- "Vendor branches"
- Subtrees
- Submodules


## Very Large Files

- Compiled dependencies
- Asset binaries


## Dealing with Very Large Files

- Shallow checkouts (avoid grabbing all versions of a file)
- Do not version binaries in the repository
  - [git-annex](https://git-annex.branchable.com/)
  - [GLFS](https://git-lfs.github.com)
  - [git-bigfiles](http://caca.zoy.org/wiki/git-bigfiles)

NOTE: http://blogs.atlassian.com/2014/05/handle-big-repositories-git/


----
# Branching Patterns

- Scheduled Release (GitFlow)
- Branch-Per-Feature (GitHub Flow)
- State / Environment Branching (GitLab Flow)


## Scheduled Release

![GitFlow]()


## Branch-Per-Feature

![GitHub Flow]()


## State Branching

![GitLab Flow]()


----
# Maintenance Strategies

aka: merge vs. rebase


## Decisions, Decisions.

![merge or rebase flowchart](assets/rebase-or-merge.png)


## Merging to Update is "Messy"

![merge to update](assets/merge-to-update.png)


## Merging to Combine is "Messy"

![commit graph with no parents](assets/merge-commits-graphed.png)


## Git is Commit-Aware; Not Branch Aware

![gitK screenshot](assets/)

Note: Git is commit-aware. Not Branch aware. That means every single commit is always visible. Nothing is collapsible in the default UIs. Information about parents are retained, sort of, but you have to do your merges in a very specific way to take advantage of it.


## Compare: Bazaar is branch aware.

![bzr screenshot zoomed out](assets/bzr-log-graphical.png)


## Make Whole Thoughts

Resources: [gitforteams.com/resources/commit-granularity.html](http://gitforteams.com/resources/commit-granularity.html)

Note: Reshape your personal work history to reflect a whole idea before sharing it with others. This essentially mimics the creation of a patch. Rebasing also allows you to tease apart multiple ideas from a single commit and separate them into two different commits.


## Convert Conversations to Conclusions

aka: make patches from pull requests

Note: With a Web-based interface, we’re now seeing a lot more conversations happen alongside the code, with tiny commits and adjustments along the way. Previously this conversation might have happened in a mailing list, with patches attached. Same conversation, but the patches reflected whole “conclusions” up to that point. There were no micro commits in the repository history. In other words, when we moved to a web-based system with conversations, we essentially switched from conclusion-based commits to conversation artefacts.


## Compare Merge and Rebase

![merge vs. rebase compared graphs](assets/merge-types.svg)


## TIMTOWTDI

- Pull = Fetch + Merge
- Merge -> no fast forward (“true merge”)
- Merge -> with fast forward
- Merge with --squash -> all into one
- Rebase -> rewind + replay
- Cherry Pick -> copy and paste commits

NOTE: Pull request => fetch + merge with no fast forwards. Creates a merge commit. Often completed on a remote system with a one-click button. Forcing you into whatever workflow the UI has created for you. No flexibility! Merge request => setup the incoming work as a remote; review it locally; and then merge in the branch (or rebase!) however you would like. More steps to setup, but more control over how the work looks in the history graph.


----
# Access Control

- Who gets write access?
- What can they commit to?


## Per-Branch Access

- aka The Subversion Way
- now available from GitLab, and Bitbucket


## Pull Request Model

- aka The GitHub Way
- available everywhere


# www.gitforteams.com

Emma Jane Hogbin Westby
@emmajanehw

[book cover]
[video cover]
