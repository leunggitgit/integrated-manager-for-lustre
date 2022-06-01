set -e
set -x

vagrant reload iscsi
vagrant reload adm
vagrant reload mds1
vagrant reload mds2
vagrant reload oss1
vagrant reload oss2

exit

vagrant provision --provision-with=restart-lustre

vagrant provision --provision-with=restart-lustre-client

