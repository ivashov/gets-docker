#!/bin/bash

trap 'kill $SLEEP_PID' INT TERM

cd /usr/local/lib/
./cutesib&
SIB_PID=$!

while :
do
    sleep 60
done&

SLEEP_PID=$!
wait $SLEEP_PID
wait $SLEEP_PID

kill $SIB_PID
wait $SIB_PID
