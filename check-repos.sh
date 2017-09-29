#!/bin/sh

# cheeky check of REPOS to see if there is any new stuff I need to pull

REPOS=(frontend writers wcpw-laravel)

function check_repo {

  REPO=$1
  cd ~/Repos/$REPO

  echo $REPO
  
  git remote -v update
}

for repo in "${REPOS[@]}"
do
  check_repo $repo
done
