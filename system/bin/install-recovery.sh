#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56063310:a05755db7fe7f8e60413173cde3cf79a9ddc6886; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51467594:bb25fa25ab9f659099ddc522c81e48fbb8972237 EMMC:/dev/block/bootdevice/by-name/recovery a05755db7fe7f8e60413173cde3cf79a9ddc6886 56063310 bb25fa25ab9f659099ddc522c81e48fbb8972237:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
