
set -e
set -x

#vagrant provision --provision-with=configure-lustre-network,create-ldiskfs-fs-local,create-ldiskfs-fs2-local,mount-ldiskfs-fs-local,mount-ldiskfs-fs2-local

vagrant provision --provision-with=configure-lustre-network,create-ldiskfs-fs-local,mount-ldiskfs-fs-local

