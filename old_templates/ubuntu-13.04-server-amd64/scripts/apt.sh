#!/bin/sh -x
apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y install dkms
apt-get -y install nfs-common
apt-get -y install --no-install-recommends rake
apt-get -y install tmux nano curl vim tree htop smartmontools mosh inotify-tools zerofree software-properties-common ncdu unzip

#Add the apt repo for ag and install it
apt-add-repository ppa:mizuno-as/silversearcher-ag
apt-get update
apt-get install silversearcher-ag