#!/bin/sh


# create a new root bucket
ceph osd crush add-bucket  redbull root

# create host buckets
for i in `seq 1 6`; do ceph osd crush add-bucket  BFJD-PSC-oNest-YW-SV7$i host; done
for i in `seq 1 6`; do ceph osd crush move BFJD-PSC-oNest-YW-SV7$i root=redbull; done


# dump osds for each host
ceph osd dump |grep 10.32.37.71 | awk '{print $1}' > node-1.txt
......
ceph osd dump |grep 10.32.37.76 | awk '{print $1}' > node-6.txt

# add osd to each host
for osd in `cat node-1.txt`; do ceph osd crush add $osd 1 host=BFJD-PSC-oNest-YW-SV71; done
......
for osd in `cat node-6.txt`; do ceph osd crush add $osd 1 host=BFJD-PSC-oNest-YW-SV76; done


# create a new crush ruleset for new root
ceph osd crush rule create-simple leaf-host redbull host


ceph osd crush move rack-1 root=blackbull
ceph osd crush move rack-2 root=blackbull
ceph osd crush move rack-3 root=blackbull

ceph osd crush add-bucket node-1 host
ceph osd crush add-bucket node-2 host
ceph osd crush add-bucket node-3 host
ceph osd crush add-bucket node-4 host
ceph osd crush add-bucket node-5 host
ceph osd crush add-bucket node-6 host

ceph osd crush move node-1 rack=rack-1
ceph osd crush move node-2 rack=rack-1
ceph osd crush move node-3 rack=rack-2
ceph osd crush move node-4 rack=rack-2
ceph osd crush move node-5 rack=rack-3
ceph osd crush move node-6 rack=rack-3
