#!/bin/bash
# Removing locally and from remote the branches alredy merged in master.
# Be carefull with reverted branches. Git branches --merged does not know about revert.

git checkout master

# Update our list of remotes
git fetch
git remote prune origin

# Remove local fully merged branches
git branch --merged master | grep -v 'master$' | xargs git branch -d

# Show remote fully merged branches in master
echo "The following remote branches are fully merged in master and will be removed:"
git branch -r --merged master | sed 's/ *origin\///' | grep -v 'master$' | grep -v 'release$'

read -p "Are you sure there are no reverted branches ? Continue (y/n)? "
if [ "$REPLY" == "y" ]
then
   # Remove remote fully merged branches
   git branch -r --merged master | sed 's/ *origin\///' \
             | grep -v 'master$' | grep -v 'release$' | xargs -I% git push origin :%
   echo "Done!"
   echo "Old branches are removed"
fi

