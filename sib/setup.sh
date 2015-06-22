#!/bin/bash

mkdir sib-setup
pushd sib-setup

wget http://sourceforge.net/projects/smart-m3/files/Smart-M3-RedSIB_0.9/redsib_0.9.tar.gz || exit 1
tar -xf redsib_0.9.tar.gz
pushd redsib_0.9/sources

tar -xf libwhiteboard_2.3.tar.gz
pushd libwhiteboard-2.3
./configure --prefix=/usr/local && make && make install || exit 1
popd

pushd redsibd-0.9.01_time
./configure --prefix=/usr/local && make && make install || exit 1
popd

pushd sib-tcp-0.81
./configure --prefix=/usr/local && make && make install || exit 1
popd

popd # redsib_0.9/sources
popd # sib-setup

rm -rfv sib-setup
exit 0
