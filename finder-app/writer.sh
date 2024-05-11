#!/bin/sh



# Check if the correct number of arguments are passed
if [ $# -lt 2 ]
then 
	echo "Wrong Arguments"
	exit 1
fi
Path=$1
String=$2
#Get the path of the dir from the arrguments 
dir=$(dirname "$Path")

# Check if the directory exists, if not create it
if [ ! -d "$dir" ];
then
#Create Directory
mkdir -p "$dir" 
fi
# Try to write the string to the file
echo "$String"> "$Path"

