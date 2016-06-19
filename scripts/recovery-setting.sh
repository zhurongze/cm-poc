#!/bin/sh
#
### max_active 15, single_start 5, max_backfills 15

ceph tell osd.* injectargs '--osd_recovery_max_active 2'
ceph tell osd.* injectargs '--osd_recovery_max_single_start 2'
ceph tell osd.* injectargs '--osd_recovery_max_chunk 8388608'
ceph tell osd.* injectargs '--osd_max_backfills 2'
