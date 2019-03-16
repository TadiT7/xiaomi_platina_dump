#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60761422:2dc7c3b78f00411e1d9b4b25b1e98f9b600faac3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54519114:5d42ca70cf145f69f9a3f5e65834d3e2164738cf EMMC:/dev/block/bootdevice/by-name/recovery 2dc7c3b78f00411e1d9b4b25b1e98f9b600faac3 60761422 5d42ca70cf145f69f9a3f5e65834d3e2164738cf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
