#!/bin/bash

swapoff -a
vim /etc/fstab
vim /etc/hosts

apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl

# Add    Environment="cgroup-driver=systemd/cgroup-driver=cgroupfs"    in the file
vim /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
