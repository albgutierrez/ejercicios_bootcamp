#! /bin/bash
echo "Arguments: $@"
echo "Number of arguments: $#"
for arg in "$a"
do
    echo "$arg"
done
echo "The name of the script is: $0"
echo "The first argument is: $1"
if [ -x $0 ]
then
    echo "$0" file exists!
fi
