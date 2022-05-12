# README supplements

This README-fix supplements existing README.

The build is tested against the IML development sandbox.

Assume "adm" machine as the build machine.

vagrant up adm
vagrant migration --migration-with=yum-update

## For the first build

sudo sh
cd /root/integrated-manager-for-lustre
source ./build-fix.env
sh build-fix-prep.sh
sh build-fix-prep-zfs.sh
sh make-fix-all.sh

## For subsequent builds

sudo sh
cd /root/integrated-manager-for-lustre
source ./build-fix.env
sh make-fix-all.sh
