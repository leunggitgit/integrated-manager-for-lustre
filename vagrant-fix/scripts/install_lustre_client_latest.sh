#!/bin/bash

set -e
set -x

LUSTRE=$1

yum-config-manager --add-repo https://downloads.whamcloud.com/public/lustre/lustre-${LUSTRE}/el7/client/
yum install -y --nogpgcheck lustre-client

modprobe -v lustre
lsmod | fgrep lustre

echo "lustre" > /etc/modules-load.d/lustre.conf

systemctl enable systemd-modules-load
systemctl restart systemd-modules-load
systemctl status systemd-modules-load
