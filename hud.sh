#!/usr/bin/bash

print() {
  echo "$1"
}

# hugo build

print "building the project ..."
hugo

print "adding the build files to git .."
git add .

print "commimting all files .."
read -p "commit message >> " msg
git commit -m "$msg"

print "pushing the code to github .."

git push -u origin main
