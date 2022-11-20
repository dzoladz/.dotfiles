# !/bin/bash
#---------------------------------------------------------
# Usage: git cleanup
# Delete any local branches whose remote has been deleted
#---------------------------------------------------------
git fetch --prune
git branch -vv | grep "origin/.*: gone]" | awk '{print $1}' | xargs git branch -D