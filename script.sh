#!/bin/bash
#This file is a task file

while true
do
        read -p "Enter the main directory name: " main
        if [ -z $main ]
        then
                echo "Directory name cannot be empty"
                exit 1
        elif [ -e $main ]
        then
                echo "Directory already exists"
                read -p "Give a valid directory name : " main
        else
                mkdir $main
                break
        fi
done

while true
do
        read -p "Enter the file name: " file
        if [ -z $file ]
        then
                echo "File name cannot be empty"
                exit 1
        elif [ -e $main/$file ]
        then
                echo "file already exists"
                read -p "Give a valid file name : " file
        else
                touch $main/$file
                break
        fi
done
echo"----------Task Done----------------"
