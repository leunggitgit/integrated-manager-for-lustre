#
# By Steve Leung
#
# This is the same as "make all".
#

make rpms > make-rpms.out 2>&1 \
&& make copr-rpms > make-copr-rpms.out 2>&1 \
&& make device-scanner-rpms > make-device-scanner-rpms.out 2>&1 \
&& make iml-gui-rpm > make-iml-gui-rpm.out 2>&1 \
&& make docker-rpms > make-docker-rpms.out 2>&1 \
&& find _topdir

echo
echo "Looking for errors..."
echo
fgrep -i ERROR make-rpms.out make-copr-rpms.out make-device-scanner-rpms.out make-iml-gui-rpm.out make-docker-rpms.out

