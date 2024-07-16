#!/bin/bash
writefile=$1
writestr=$2
if [ $# -ne 2 ]
then
	echo The number of arguments must be 2
	exit 1
fi
mkdir -p $(dirname $writefile)
echo $writestr > $writefile
if [ $? -ne 0 ]
then
	echo File could not be created
	exit 1
else
	echo Success
	exit 0
fi
