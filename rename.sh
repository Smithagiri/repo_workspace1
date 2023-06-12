#!/bin/bash
set -x

echo "Enter the directory name to find the files to be rename :"
read dir
cd $dir
pwd
count= find . -type f -iname '*.xml'

if [ $? -ne 1 ]
then

      #find . -type f -iname '*.xml'|

      mv -v '$count' '$(count).tmp'
      #echo "$count"

      #while [ $? -ne 1 ]
      #do
      #       test=$*
      #       mv -v '$test.xml' '$test.tmp'
      #done
#else
#       echo "Enter the valid directory name"
fi

