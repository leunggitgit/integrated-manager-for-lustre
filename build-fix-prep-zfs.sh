#
# By Steve Leung
#
# You only need to execute this script once to set up the environment for "make device-scanner-rpms".
# 

pushd ..

curl -O -s -L https://github.com/zfsonlinux/zfs/releases/download/zfs-0.7.13/spl-0.7.13.tar.gz
curl -O -s -L https://github.com/zfsonlinux/zfs/releases/download/zfs-0.7.13/zfs-0.7.13.tar.gz

tar xf spl-0.7.13.tar.gz
tar xf zfs-0.7.13.tar.gz

yum -y install libuuid-devel libblkid-devel kernel-devel

pushd ./spl-0.7.13
./configure
make
make install

popd

pushd ./zfs-0.7.13
./configure
make
make install

popd

popd
