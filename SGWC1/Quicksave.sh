#!/bin/sh

# Script to change keybinds
# Usage:
# sh Quicksave.sh F5 F8
#
# F5 - save button
# F8 - load button
# change them to whatever you want

file=$(cat ./Libs/Config/defaultProfile.xml)
file=$(printf '%s\n' "$file" | sed "s/savebutton/$1/g")
file=$(printf '%s\n' "$file" | sed "s/loadbutton/$2/g")

echo "$file" > ./Libs/Config/defaultProfile.xml
zip --compression-method deflate -9 ./Quicksave.pak ./Libs
