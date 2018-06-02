#!/bin/bash

#Creating local repository and installing Hello World application from rpm package. After installation you can enter the word hello and you'll see "hello world" in the output

yum install -y createrepo wget
sleep 10
mkdir -p /var/ftp/repo/CentOS/7/x86_64/localrepo
cd /var/ftp/repo/CentOS/7/x86_64/localrepo/
wget https://github.com/solomon585858/OTUS-Linux-2018-04/raw/HW-8/HW-8/hello-1.0-1.x86_64.rpm
sleep 5
cd /etc/yum.repos.d/
cat >localrepo.repo <<EOF
[localrepo]
name=My Repository
baseurl=file:///var/ftp/repo/CentOS/7/x86_64/localrepo
enabled=1
gpgcheck=0
EOF
createrepo -v /var/ftp/repo/CentOS/7/x86_64/localrepo/
yum repolist
yum --disablerepo=\* --enablerepo=localrepo install \* -y

