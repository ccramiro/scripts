#!/bin/bash

function checkForCurrentTimeMillis()
{
  matchCTM=$( grep -Hn "currentTimeMillis" $1 )
  if [ "${matchCTM}" ]
  then
    echo "Consider using System.nanoTime instead of System.currentTimeMillis (EffectiveJava:276)"
    echo "$matchCTM"
    echo ""
   fi
}

function checkSuppressWarnings()
{
  matchSW=$( grep -Hin "SuppressWarnings.*unchecked" $1)
  if [ "${matchSW}" ]
  then
    echo "Eliminate every unchecked warning that you can (EffectiveJava:116)"
    echo "$matchSW"
    echo ""
  fi
}

### Main Programs starts here ###

JavaFiles=$( find . -iname "*.java" )

# Analyzing .java files
while read File
do
  checkForCurrentTimeMillis "$File"
  checkSuppressWarnings "$File"
done <<< "$JavaFiles"

