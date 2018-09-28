#!/bin/sh

function mkcd() {
  # bash script for creating a directory and immeditely cd'ing' into it

  # get argument run with the script
  fileDirectory=$1

  # if user did not give the script an input then ask the user for it
  if [ -z $fileDirectory ]
  then
    read -p 'please enter the file directory: ' fileDirectory
  fi

  # check if directory exists
  if [ -d $fileDirectory ]
  then
    echo directoy exists
    cd $fileDirectory
  else 
    echo Now creating file directory $fileDirectory
    mkdir -p $fileDirectory
    echo Directory created, redirecting to $fileDirectory
    cd $fileDirectory
  fi
}
