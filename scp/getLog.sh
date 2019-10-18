#!/bin/bash
#set -xv

USERC="MYUSER"

HOST_DEV="1.1.1.1"
HOST_QA="2.2.2.2"
HOST_PRD="3.3.3.3"

HOST=$HOST_PRD

PATH_LOG="/logs/myapp.log"

PATH_REMOTE=$PATH_LOG


echo "scp "$USERC"@"$HOST":"$PATH_REMOTE" ."

mkdir logs
sshpass -e scp $USERC@$HOST:$PATH_REMOTE logs/