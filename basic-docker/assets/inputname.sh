#!/bin/bash

if [ ! -f "myname" ]
then
	echo "Please input your student ID:"
	read myname
	echo $myname > myname
fi

if [ ! -f "myid" ]
then
	echo "Please input your name:"
	read myid
	echo $myid > myid
fi

