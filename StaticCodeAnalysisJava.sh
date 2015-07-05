#!/bin/bash

function checkForCurrentTimeMillis()
{
  match=$( grep -Hin "currentTimeMillis" $1 )
  #echo "$match"
  if [ "${match}" ]
  then
    echo "Consider using System.nanoTime instead of System.currentTimeMillis (EffectiveJava:276)"
    echo ">>> $match"
    echo ""
   fi
}


JavaFiles=$( find . -iname "*.java" )

# Analyzing Java files
while read File
do
# echo "Checking for usage of System.currentTimeMillis..."
  checkForCurrentTimeMillis "$File"
done <<< "$JavaFiles"

