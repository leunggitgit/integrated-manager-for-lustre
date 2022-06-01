set -e
set -x

#vagrant provision --provision-with=configure-lustre-client-network,mount-lustre-client,mount-lustre-client-fs2

vagrant provision --provision-with=configure-lustre-client-network,mount-lustre-client

