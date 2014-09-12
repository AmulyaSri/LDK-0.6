#!/bin/bash

yum install git

cp ubuntu-12.04-custom-x86_64.tar.gz /root/vz/template/cache

echo "Installing Python"
yum groupinstall "Development tools"
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
echo "Python installation process complete with above status"


echo "Installing MongoDB"
cp ./mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install mongodb-org
echo "MongoDB installation process complete with above status"

echo $pwd

echo "Installing pymongo"
cd ./pymongo
echo $pwd
python setup.py install
cd ..
echo $pwd
echo "pymongo installation process complete with above status"


clear


echo "Installing sh"
cd sh1
python setup.py install
cd ..
echo "sh installation process complete with above status"


echo "Installing requests"
cd requests
python setup.py install
cd ..
echo "requests installation process complete with above status"


echo "Installing tornado"
cd tornado
python setup.py install
cd ..
echo "tornado installation process complete with above status"


echo "Installing netaddr"
cd netaddr
python setup.py install
cd ..
echo "netaddr installation process complete with above status"


echo "Installing backports.ssl"
cd backports.ssl_match_hostname-3.4.0.2
python setup.py install
cd ..
echo "backports.ssl installation process complete with above status"


clear
