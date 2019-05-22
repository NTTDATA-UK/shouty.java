Contributing
============

This is a fork of `git@github.com:cucumber-ltd/shouty.java.git`

In order to maintain updates from cucumber-ltd, and to support contributing back, we use GitFlow

`master` branch is the NTT DATA repository master

`upstream_master` branch tracks the Cucumber Ltd master branch.

# Configuring Git

Add the upstream repository:

`git remote add upstream git@github.com:cucumber-ltd/shouty.java.git`

# Workflow

* Never commit to the `upstream_master` branch directly, only synchronise changes

## Update `upstream_master`

```
git checkout upstream_master
git pull upstream master
git push origin upstream_master
```

## Contribute a changes

Checkout new branch (myBranch) from `upstream_master`:

```
git checkout upstream_master
git pull upstream master
git checkout -b myBranch
```

Make changes....

Push changes:
```
git push -u origin myBranch
```

Create a PR to merge into `git@github.com:cucumber-ltd/shouty.java.git`

## Updating `master`

Create a PR to merge changes from `upstream_master` into `master`
