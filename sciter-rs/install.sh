#! /bin/bash

# exit if a command fails
set -e

triple=x86_64-unknown-linux-gnu

# install curl (needed to install rust)
apt-get update && apt-get install -y curl gdb g++-multilib lib32stdc++6 libssl-dev libncurses5-dev

# install misc apps
apt-get install -y wget vim

# install rust
curl -sL https://static.rust-lang.org/dist/rust-nightly-$triple.tar.gz | tar xvz -C /tmp
/tmp/rust-nightly-$triple/install.sh

# install cargo
curl -sL https://static.rust-lang.org/cargo-dist/cargo-nightly-$triple.tar.gz | tar xvz -C /tmp
/tmp/cargo-nightly-$triple/install.sh

# install gtk
apt-get install -y libgtk-3-dev

# cleanup package manager
apt-get autoclean && apt-get clean # remove --purge -y curl && apt-get autoclean && apt-get clean
#rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install sciter lib
wget https://github.com/c-smile/sciter-sdk/raw/master/bin.gtk/libsciter-gtk-64.so
mv libsciter-gtk-64.so /usr/lib
echo '/usr/lib' > /etc/ld.so.conf.d/libsciter.conf
ldconf


# prepare dir
mkdir /source
