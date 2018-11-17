#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55866702:80dcea89c361ec5a3348bb8ecf1eae9e936e519e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51299658:9c133a1c1b3259c7c56088a9fad801b4fb64ac4c EMMC:/dev/block/bootdevice/by-name/recovery 80dcea89c361ec5a3348bb8ecf1eae9e936e519e 55866702 9c133a1c1b3259c7c56088a9fad801b4fb64ac4c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
