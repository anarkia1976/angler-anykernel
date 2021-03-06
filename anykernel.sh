# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# EDIFY properties
kernel.string=AK Kernel @ anarkia1976
do.devicecheck=1
do.initd=1
do.modules=1
do.cleanup=1
device.name1=angler
device.name2=Angler
device.name3=
device.name4=
device.name5=

# shell variables
block=/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot;
is_slot_device=0;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel permissions
# set permissions for included ramdisk files
chmod -R 755 $ramdisk

## AnyKernel install
dump_boot;

# begin ramdisk changes

# insert casuals init modding
backup_file init.rc
insert_line init.rc "import /init.casuals.rc" after "import .*\.rc" "import /init.casuals.rc"

# end ramdisk changes

write_boot;

## end install

