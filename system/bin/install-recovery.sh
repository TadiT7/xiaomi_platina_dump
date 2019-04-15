#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60822862:512515252544be3035d13da6adb6a0b60034bd3d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54580554:b19ed03130b2ebb2b3410509f4d3372c66807750 EMMC:/dev/block/bootdevice/by-name/recovery 512515252544be3035d13da6adb6a0b60034bd3d 60822862 b19ed03130b2ebb2b3410509f4d3372c66807750:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
