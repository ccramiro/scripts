#!/bin/bash

git log | awk '/Date/{print " : " $4 " " $3 " " $6}' | uniq -c

