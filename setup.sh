#!/usr/bin/sh

echo "Installing Required python, node and go module..";
apt-get install -y apt-utils
apt-get install -y tzdata
apt-get install -y gcc
apt-get install -y python
apt-get install -y git
apt-get install -y golang-go
apt-get install -y wget
apt-get install -y pam
apt-get install -y tar
apt-get install -y xz
apt-get install -y php
apt-get install -y php-devel
apt-get install -y make
apt-get install -y gcc-c++
apt-get install -y php-pear
apt-get install numactl
apt-get install libffi-devel
cd /root
wget -c https://bootstrap.pypa.io/get-pip.py
python get-pip.py

pip install ibm_db_sa
pip install ibm_db
wget -c https://nodejs.org/dist/v16.6.1/node-v16.6.1-linux-x64.tar.xz
unxz node-v16.6.1-linux-x64.tar.xz 
tar -xf node-v16.6.1-linux-x64.tar 
mv node-v16.6.1-linux-x64 /root/nodejs 
cd /root
go get -d github.com/ibmdb/go_ibm_db 
cd /root/go/src/github.com/ibmdb/go_ibm_db/installer 
go run setup.go