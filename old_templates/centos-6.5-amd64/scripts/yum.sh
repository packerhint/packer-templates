#Yum and RPM package installations

#Install EPEL:
yum -y install epel-release

#Install the CentOS Software Collections repo. More info available here:
# https://access.redhat.com/site/documentation/en-US/Red_Hat_Software_Collections/1/html-single/1.0_Release_Notes/index.html

yum -y install centos-release-SCL

yum -y check-update

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

#more packages
yum -y install man nc vim nano tmux htop tree lsof curl wget screen telnet mailx unzip yum-utils rsync ncdu mosh ccze pv rlwrap

#Some metrics gathering tools
yum -y install apachetop atop dstat sysstat  iotop smartmontools

#Install ag
rpm -Uvhi http://swiftsignal.com/packages/centos/6/x86_64/the-silver-searcher-0.14-1.el6.x86_64.rpm