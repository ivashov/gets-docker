#!/bin/bash

trap 'kill $SLEEP_PID' INT TERM

export LD_LIBRARY_PATH=/usr/local/lib
eval `dbus-launch --sh-syntax`

PID_DBUS=$DBUS_SESSION_BUS_PID

redsibd&
PID_REDSIB=$!

sleep 1
sib-tcp --port 10622&
PID_SIB_TCP=$!

while :
do
    sleep 60
done&

SLEEP_PID=$!

wait $SLEEP_PID
wait $SLEEP_PID

echo "Killing SIB TCP"
kill $PID_SIB_TCP
wait $PID_SIB_TCP

echo "Killing REDSIB"
kill $PID_REDSIB
wait $PID_REDSIB

echo "Killing DBUS"
kill $PID_DBUS
wait $PID_DBUS
