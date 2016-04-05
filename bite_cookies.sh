#!/bin/bash

SQLCMD=sqlite3
BROWSER_PATH=~/.mozilla/firefox
SQLFILE=./query.sql

if ! hash $SQLCMD 2> /dev/null ; then
	echo "$0: $SQLCMD command not found"
	echo "$0: run sudo apt-get install $SQLCMD"
	exit 1
fi

for cookies_db in `ls $BROWSER_PATH/*.default/cookies.sqlite`
do
	$SQLCMD $cookies_db < $SQLFILE
done
