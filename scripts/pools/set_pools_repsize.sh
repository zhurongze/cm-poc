#!/bin/sh

SIZE=3
ceph osd pool set .rgw size $SIZE
ceph osd pool set .rgw.root size $SIZE
ceph osd pool set .rgw.control size $SIZE
ceph osd pool set .rgw.gc size $SIZE
ceph osd pool set .rgw.buckets size $SIZE
ceph osd pool set .rgw.buckets.index size $SIZE
ceph osd pool set .log size $SIZE
ceph osd pool set .intent-log size $SIZE
ceph osd pool set .usage size $SIZE
ceph osd pool set .users size $SIZE
ceph osd pool set .users.email size $SIZE
ceph osd pool set .users.swift size $SIZE
ceph osd pool set .users.uid size $SIZE
ceph osd pool set .rgw.buckets.extra size $SIZE
