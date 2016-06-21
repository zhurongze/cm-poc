#!/bin/sh


# Check disk label
for name in a b c d e f g h i j k l ;do ls -l /dev/sd$name; done

# Disk partition
for name in a b c d e f g h i j k l;do echo "we will parted /dev/sd$name"; parted -a optimal -s /dev/sd$name mktable gpt; parted -a optimal -s /dev/sd$name mkpart ceph 0% 20GB; parted -a optimal -s /dev/sd$name mkpart ceph  20GB 100%; done

# partition verification
for name in a b c d e f g h i j k l;do parted -a optimal -s /dev/sd$name print; done
