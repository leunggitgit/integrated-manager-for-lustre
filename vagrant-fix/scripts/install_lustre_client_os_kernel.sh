#!/bin/bash

LUSTRE=$1

yum-config-manager --add-repo https://downloads.whamcloud.com/public/lustre/lustre-#{LUSTRE}/el7/client/
yum install -y --nogpgcheck lustre-client

