#
# By Steve Leung
#
# This is the same as "make all".
#

make copr-rpms \
&& make rpms \
&& make device-scanner-rpms \
&& make iml-gui-rpm \
&& systemctl start docker \
&& make docker-rpms \
&& find _topdir

