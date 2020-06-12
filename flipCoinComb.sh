#! /bin/bash

flip=$(($RANDOM%3))
if [ $flip -eq 1 ]
then
        echo " tails"
else
        echo "heads"
fi

