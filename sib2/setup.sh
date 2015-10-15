#!/bin/bash

mkdir sib-setup
pushd sib-setup

# Libwhiteboard
wget http://sourceforge.net/projects/smart-m3/files/CuteSIB_0.1.0/libwhiteboard-2.3.tar.gz || exit 1
tar -xf libwhiteboard-2.3.tar.gz
pushd libwhiteboard-2.3
./configure --prefix=/usr/local && make && make install || exit 1
popd

# SIB
wget http://sourceforge.net/projects/smart-m3/files/CuteSIB_0.1.0/cutesib-0.1.0.tar.gz || exit 1
tar -xf cutesib-0.1.0.tar.gz
patch -p0 < /pro-patch.diff
pushd cutesib-0.1.0

pushd AccessPointInterface
qmake && make && make install || exit 1
popd

pushd TcpAccessPoint
qmake && make && make install || exit 1
popd

pushd CuteSIB
qmake &&\
make &&\
make install || exit 1
popd

popd # sib-setup

rm -rfv sib-setup
exit 0
