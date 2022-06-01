#!/bin/bash

set -e
set -x

LUSTRE=$1

modprobe -v lustre
lsmod | fgrep lustre
