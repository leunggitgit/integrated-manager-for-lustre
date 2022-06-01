set -e
set -x

vagrant provision --provision-with=install-ldiskfs-latest mds1
vagrant provision --provision-with=install-ldiskfs-latest mds2
vagrant provision --provision-with=install-ldiskfs-latest oss1
vagrant provision --provision-with=install-ldiskfs-latest oss2
#vagrant provision --provision-with=restart-lustre

vagrant provision --provision-with=install-lustre-client-latest client1
vagrant provision --provision-with=install-lustre-client-latest client2
#vagrant provision --provision-with=restart-lustre-client

