#!/bin/sh

# create a new crush ruleset for new root
ceph osd crush rule create-simple leaf-host redbull host

# create a new root bucket
ceph osd crush add-bucket  blackbull root

# create new racks
ceph osd crush add-bucket rack-1 rack
ceph osd crush add-bucket rack-2 rack
ceph osd crush add-bucket rack-3 rack

# create new hosts
ceph osd crush add-bucket node-1 host
ceph osd crush add-bucket node-2 host
ceph osd crush add-bucket node-3 host
ceph osd crush add-bucket node-4 host
ceph osd crush add-bucket node-5 host
ceph osd crush add-bucket node-6 host

# move racks to root
ceph osd crush move rack-1 root=blackbull
ceph osd crush move rack-2 root=blackbull
ceph osd crush move rack-3 root=blackbull

# move hosts to racks
ceph osd crush move node-1 rack=rack-1
ceph osd crush move node-2 rack=rack-1
ceph osd crush move node-3 rack=rack-2
ceph osd crush move node-4 rack=rack-2
ceph osd crush move node-5 rack=rack-3
ceph osd crush move node-6 rack=rack-3

# dump osds for each host
ceph osd dump |grep 10.32.37.71 | awk '{print $1}' > node-1.txt
......
ceph osd dump |grep 10.32.37.76 | awk '{print $1}' > node-6.txt

# add osd to each host
for osd in `cat node-1.txt`; do ceph osd crush add $osd 1 host=node-1; done
......
for osd in `cat node-6.txt`; do ceph osd crush add $osd 1 host=node-6; done

# create a new crush ruleset for new root
ceph osd crush rule create-simple leaf-host blackbull rack
