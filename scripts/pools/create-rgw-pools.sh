#!/bin/sh

BIG_NUM=2048
SMALL_NUM=128
ceph osd pool create .rgw $SMALL_NUM $SMALL_NUM
ceph osd pool create .rgw.root $SMALL_NUM $SMALL_NUM
ceph osd pool create .rgw.control $SMALL_NUM $SMALL_NUM
ceph osd pool create .rgw.gc $BIG_NUM $BIG_NUM
ceph osd pool create .rgw.buckets $BIG_NUM $BIG_NUM
ceph osd pool create .rgw.buckets.index  $BIG_NUM $BIG_NUM
ceph osd pool create .log $SMALL_NUM $SMALL_NUM
ceph osd pool create .intent-log $SMALL_NUM $SMALL_NUM
ceph osd pool create .usage $SMALL_NUM $SMALL_NUM
ceph osd pool create .users $SMALL_NUM $SMALL_NUM
ceph osd pool create .users.email $SMALL_NUM $SMALL_NUM
ceph osd pool create .users.swift $SMALL_NUM $SMALL_NUM
ceph osd pool create .users.uid $SMALL_NUM $SMALL_NUM
ceph osd pool create .rgw.buckets.extra $SMALL_BUM $SMALL_NUM
