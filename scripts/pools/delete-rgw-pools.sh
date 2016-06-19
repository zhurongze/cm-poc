#!/bin/sh

ceph osd pool delete .rgw                  .rgw                 --yes-i-really-really-mean-it      
ceph osd pool delete .rgw.root             .rgw.root            --yes-i-really-really-mean-it
ceph osd pool delete .rgw.control          .rgw.control         --yes-i-really-really-mean-it
ceph osd pool delete .rgw.gc               .rgw.gc              --yes-i-really-really-mean-it
ceph osd pool delete .rgw.buckets          .rgw.buckets         --yes-i-really-really-mean-it
ceph osd pool delete .rgw.buckets.index    .rgw.buckets.index   --yes-i-really-really-mean-it
ceph osd pool delete .log                  .log                 --yes-i-really-really-mean-it
ceph osd pool delete .intent-log           .intent-log          --yes-i-really-really-mean-it
ceph osd pool delete .usage                .usage               --yes-i-really-really-mean-it
ceph osd pool delete .users                .users               --yes-i-really-really-mean-it
ceph osd pool delete .users.email          .users.email         --yes-i-really-really-mean-it
ceph osd pool delete .users.swift          .users.swift         --yes-i-really-really-mean-it
ceph osd pool delete .users.uid            .users.uid           --yes-i-really-really-mean-it
ceph osd pool delete .rgw.buckets.extra    .rgw.buckets.extra   --yes-i-really-really-mean-it
