#!/bin/bash

export LD_LIBRARY_PATH=/usr/local/lib
eval `dbus-launch --sh-syntax`
redsibd&
sleep 0.1
sib-tcp --port 10622
