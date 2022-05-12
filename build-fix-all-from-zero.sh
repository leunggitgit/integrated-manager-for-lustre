
source ./build-fix.env

sh build-fix-prep.sh > build-fix-prep-sh.out 2>&1 \
&& sh build-fix-prep-zfs.sh > build-fix-prep-zfs-sh.out 2>&1 \
&& sh build-fix-all.sh

echo "Done"
