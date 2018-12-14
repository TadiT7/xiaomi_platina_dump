#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:59467086:551acb217a70da9c403c29aa560755e64fc821c0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:53249354:c6377d359fde7be9ff91170fd83d4f3dcc2d394d EMMC:/dev/block/bootdevice/by-name/recovery 551acb217a70da9c403c29aa560755e64fc821c0 59467086 c6377d359fde7be9ff91170fd83d4f3dcc2d394d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
