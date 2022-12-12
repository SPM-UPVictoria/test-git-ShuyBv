#!/bin/bash

# mysftp--Makes sftp start up more like ftp.

/bin/echo -n "User account: "
read account

if [ -z $account ] ; then
  exit 0;       # changed their mind, presumably
fi

if [ -z "$1" ] ; then
  /bin/echo -n "Remote host: "
  read host
  if [ -z $host ] ; then
    exit 0
  fi
else
  host=$1
fi

# End by switching to sftp. The -C flag enables compression here.

exec sftp -C $account@$host