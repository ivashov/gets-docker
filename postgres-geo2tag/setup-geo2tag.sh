#!/bin/bash

cat /pg/*.pg > /pg/all.pg
gosu postgres postgres --single -jE geo2tag < /pg/all.pg
rm /pg/all.pg
