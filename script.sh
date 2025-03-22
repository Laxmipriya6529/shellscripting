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
while true
do
        read -p "Enter the main directory name: " main1
        if [ -z $main1 ]
        then
                echo "Directory name cannot be empty"
                exit 1
        elif [ -e $main1 ]
        then
                echo "Directory already exists"
                read -p "Give a valid directory name : " main1
        else
                mkdir $main1
                break
        fi
done
for i in {1..2}
do
	while true
	do
        	read -p "Enter the file name: " file1
        	if [ -z $file1 ]
        	then
                	echo "File name cannot be empty"
                	exit 1
        	elif [ -e $main1/$file1 ]
        	then
                	echo "file already exists"
                	read -p "Give a valid file name : " file1
        	else
                	touch $main1/$file1
                	break
        	fi
	done
done	
while true
do	
        read -p "Enter the main directory name: " main2
        if [ -z $main2 ]
        then
                echo "Directory name cannot be empty"
                exit 1
        elif [ -e $main2 ]
        then
                echo "Directory already exists"
                read -p "Give a valid directory name : " main2
        else
                mkdir $main2
                break
        fi
done
for j in {1..3}
do
	while true
	do
        	read -p "Enter the file name: " file2
        	if [ -z $file2 ]
        	then
                	echo "File name cannot be empty"
                	exit 1
        	elif [ -e $main2/$file2 ]
        	then
                	echo "file already exists"
                	read -p "Give a valid file name : " file2
        	else
                	touch $main2/$file2
                	break
        	fi
	done
done

echo"----------Task Done----------------"
