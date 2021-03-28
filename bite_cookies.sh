#!/bin/bash

SQLCMD=sqlite3
BROWSER_PATH=~/.mozilla/firefox
SQLFILE=./query.sql

if ! hash ${SQLCMD} 2> /dev/null ; then
	echo "$0: ${SQLCMD} command not found"
	echo "$0: run sudo apt-get install ${SQLCMD}"
	exit 1
fi

echo "Deleting cookies from the following files:"
for cookies_db in `find ${BROWSER_PATH} -name cookies.sqlite`
do
  echo ${cookies_db}
	${SQLCMD} ${cookies_db} < ${SQLFILE}
done

echo ""
echo "Cookies deleted!"
