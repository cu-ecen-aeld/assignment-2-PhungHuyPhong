#!/bin/bash
filesdir=$1
searchstr=$2
if [ $# -ne 2 ]
then
	echo Require two arguments
	exit 1
fi
if [ ! -d $filesdir ]
then
	echo the first argument must be a directory
	exit 1
fi
X=$(find $filesdir -type f | wc -l)
Y=$(grep -r $searchstr $filesdir 2>/dev/null | wc -l)
echo The number of files are $X and the number of matching lines are $Y
