#
# By Steve Leung
#
# You only need to execute this script once to set up the environment for "make all".
# 

# prep for make rpms

yum install -y yum-plugin-copr

yum copr enable -y managerforlustre/manager-for-lustre-devel

yum install -y rpmdevtools git ed epel-release python-setuptools

# prep for make copr-rpms

yum -y install npm

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
yum -y install yarn

yum install -y gcc openssl openssl-devel epel-release

curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain stable
export PATH=$PATH:/root/.cargo/bin
export CARGO_HOME=/root/.cargo
export RUSTUP_HOME=/root/.rustup

# this fixes up some Rust compiler issue.
cargo update -p lexical-core

# prep for make device-scanner-rpms

export PKG_CONFIG_PATH=/root/zfs-0.7.13/lib/libzfs

# prep for make iml-gui-rpm

rustup target add wasm32-unknown-unknown
cargo install --force wasm-pack
cargo install --force cargo-make

# prep for make docker-rpms

yum -y install yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

systemctl start docker
systemctl enable docker

# Unclear if we really need this...
yum install -y python python-pip python-devel python2-pbr postgresql96 openssl gcc-c++

# add this line in "docker/python-service-base.dockerfile"; right before "pip install -r requirements.txt"
#yum install -y python-paramiko

curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose
mv /usr/local/bin/docker-compose /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

# If time is not correct, it might affect "make docker-rpms"
yum install -y ntp
systemctl restart ntpd
systemctl enable ntpd

