#!/bin/bash

## If you receive the following output after running kvm-ok, you can use KVM on your machine:
## INFO: /dev/kvm exists
## KVM acceleration can be used
#sudo apt install cpu-checker && sudo kvm-ok

## Install KVM and libvirt and add our current user to the libvirt group to grant sufficient permissions.
sudo apt install -y libvirt-clients libvirt-daemon-system qemu-kvm
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt