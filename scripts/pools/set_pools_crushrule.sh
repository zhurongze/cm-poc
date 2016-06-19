#!/bin/sh

RULE=1
ceph osd pool set .rgw crush_ruleset $RULE
ceph osd pool set .rgw.root crush_ruleset $RULE
ceph osd pool set .rgw.control crush_ruleset $RULE
ceph osd pool set .rgw.gc crush_ruleset $RULE
ceph osd pool set .rgw.buckets crush_ruleset $RULE
ceph osd pool set .rgw.buckets.index crush_ruleset $RULE
ceph osd pool set .log crush_ruleset $RULE
ceph osd pool set .intent-log crush_ruleset $RULE
ceph osd pool set .usage crush_ruleset $RULE
ceph osd pool set .users crush_ruleset $RULE
ceph osd pool set .users.email crush_ruleset $RULE
ceph osd pool set .users.swift crush_ruleset $RULE
ceph osd pool set .users.uid crush_ruleset $RULE
ceph osd pool set .rgw.buckets.extra crush_ruleset $RULE
