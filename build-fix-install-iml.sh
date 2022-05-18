
set -x 

source=.

target=..

mkdir -p ../manager-rpms
mkdir -p ../agent-rpms

cp $source/_topdir/RPMS/x86_64/rust-iml-{action-runner,agent-comms,api,cli,config-cli,corosync,debuginfo,device,gui,journal,mailbox,network,ntp,ostpool,postoffice,report,sfa,snapshot,stats,task-runner,warp-drive,timer}-*.rpm $target/manager-rpms/
cp $source/_topdir/RPMS/noarch/python2-iml-manager-*.rpm $target/manager-rpms/
cp $source/_topdir/RPMS/x86_64/rust-iml-agent-[0-9]*.rpm $target/agent-rpms
cp $source/_topdir/RPMS/x86_64/iml-device-scanner-*.rpm $target/agent-rpms

cp $source/chroma_support.repo /etc/yum.repos.d/

yum install -y /tmp/manager-rpms/*.rpm

chroma-config setup admin lustre localhost --no-dbspace-check -v


