#!/bin/bash

apt-get update
apt-get upgrade -y
/bin/bash docker.sh
/bin/bash kubernetes.sh
