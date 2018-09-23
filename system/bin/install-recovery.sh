#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55854414:97c4ae17258776ae9e92471c58b6b283deae8ca8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51287370:eb45695e2f227748849428f31d1588dfdea9072c EMMC:/dev/block/bootdevice/by-name/recovery 97c4ae17258776ae9e92471c58b6b283deae8ca8 55854414 eb45695e2f227748849428f31d1588dfdea9072c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
