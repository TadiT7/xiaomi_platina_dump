#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60822862:0237e74ec1d73a547f74131e957b5b514dbe5da3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54580554:f085ee2495b61c436183e52645ca782c3ff5726a EMMC:/dev/block/bootdevice/by-name/recovery 0237e74ec1d73a547f74131e957b5b514dbe5da3 60822862 f085ee2495b61c436183e52645ca782c3ff5726a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
