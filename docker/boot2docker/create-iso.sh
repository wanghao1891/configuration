HOME=/Users/huangling/wanghao/tmp
cd $HOME/src

echo "Archive."
find . | cpio -o -H newc | xz -9 --format=lzma > ../initrd.img
cd ..
cp initrd.img iso/boot/initrd.img

echo "Create iso."
version=`cat $HOME/iso/version`
$HOME/../bin/xorriso/bin/xorriso  \
    -publisher "Docker Inc." \
    -as mkisofs \
    -l -J -R -V "Boot2Docker-$version" \
    -no-emul-boot -boot-load-size 4 -boot-info-table \
    -b boot/isolinux/isolinux.bin -c boot/isolinux/boot.cat \
    -o $HOME/dest/boot2docker.iso $HOME/iso
