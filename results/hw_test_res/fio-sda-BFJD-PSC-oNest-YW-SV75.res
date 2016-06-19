hdd_4kws: (g=0): rw=randwrite, bs=4K-4K/4K-4K/4K-4K, ioengine=sync, iodepth=1
...
hdd_4kwd: (g=1): rw=randwrite, bs=4K-4K/4K-4K/4K-4K, ioengine=sync, iodepth=2
...
hdd_4krd: (g=2): rw=randread, bs=4K-4K/4K-4K/4K-4K, ioengine=sync, iodepth=1
...
hdd_1mwd: (g=3): rw=write, bs=1M-1M/1M-1M/1M-1M, ioengine=sync, iodepth=2
hdd_1mwd: (g=4): rw=read, bs=1M-1M/1M-1M/1M-1M, ioengine=sync, iodepth=2
fio-2.2.8
Starting 98 threads

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=18776: Sun Jun 12 14:29:03 2016
  mixed: io=52876KB, bw=1751.5KB/s, iops=437, runt= 30190msec
    clat (msec): min=52, max=190, avg=72.74, stdev=12.44
     lat (msec): min=52, max=190, avg=72.74, stdev=12.44
    clat percentiles (msec):
     |  1.00th=[   58],  5.00th=[   60], 10.00th=[   61], 20.00th=[   63],
     | 30.00th=[   65], 40.00th=[   68], 50.00th=[   71], 60.00th=[   73],
     | 70.00th=[   77], 80.00th=[   82], 90.00th=[   91], 95.00th=[   99],
     | 99.00th=[  112], 99.50th=[  118], 99.90th=[  126], 99.95th=[  135],
     | 99.99th=[  190]
    bw (KB  /s): min=    0, max=   61, per=3.06%, avg=53.57, stdev= 7.62
    lat (msec) : 100=96.04%, 250=3.96%
  cpu          : usr=0.02%, sys=0.14%, ctx=38705, majf=0, minf=16
  IO depths    : 1=146.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13219/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=18814: Sun Jun 12 14:29:03 2016
  mixed: io=58240KB, bw=1938.4KB/s, iops=484, runt= 30051msec
    clat (msec): min=54, max=107, avg=66.03, stdev= 7.10
     lat (msec): min=54, max=107, avg=66.03, stdev= 7.10
    clat percentiles (msec):
     |  1.00th=[   58],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   64], 60.00th=[   67],
     | 70.00th=[   69], 80.00th=[   72], 90.00th=[   76], 95.00th=[   80],
     | 99.00th=[   94], 99.50th=[   99], 99.90th=[  102], 99.95th=[  102],
     | 99.99th=[  108]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=59.11, stdev= 8.18
    lat (msec) : 100=99.68%, 250=0.32%
  cpu          : usr=0.02%, sys=0.07%, ctx=21296, majf=0, minf=0
  IO depths    : 1=145.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14560/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=18848: Sun Jun 12 14:29:03 2016
  mixed: io=53576KB, bw=1777.2KB/s, iops=444, runt= 30133msec
    clat (usec): min=443, max=1233.5K, avg=71801.88, stdev=86795.42
     lat (usec): min=443, max=1233.5K, avg=71802.31, stdev=86795.41
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   41], 60.00th=[   57],
     | 70.00th=[   80], 80.00th=[  115], 90.00th=[  180], 95.00th=[  245],
     | 99.00th=[  412], 99.50th=[  478], 99.90th=[  676], 99.95th=[  734],
     | 99.99th=[  922]
    bw (KB  /s): min=    0, max=  166, per=3.12%, avg=55.47, stdev=24.84
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.01%, 4=3.23%, 10=13.36%, 20=14.62%, 50=24.88%
    lat (msec) : 100=20.12%, 250=19.09%, 500=4.26%, 750=0.37%, 1000=0.04%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19628, majf=0, minf=0
  IO depths    : 1=145.8%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13394/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=18882: Sun Jun 12 14:29:03 2016
  mixed: io=4881.0MB, bw=166577KB/s, iops=162, runt= 30005msec
    clat (usec): min=4311, max=18220, avg=6113.24, stdev=450.23
     lat (usec): min=4344, max=18252, avg=6144.04, stdev=450.29
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5856],
     | 30.00th=[ 5984], 40.00th=[ 5984], 50.00th=[ 5984], 60.00th=[ 6176],
     | 70.00th=[ 6240], 80.00th=[ 6560], 90.00th=[ 6624], 95.00th=[ 6624],
     | 99.00th=[ 6624], 99.50th=[ 8160], 99.90th=[10304], 99.95th=[10304],
     | 99.99th=[18304]
    bw (KB  /s): min=   68, max=175426, per=98.37%, avg=163870.07, stdev=22773.79
    lat (msec) : 10=99.90%, 20=0.10%
  cpu          : usr=0.98%, sys=2.21%, ctx=7326, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4881/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=18886: Sun Jun 12 14:29:03 2016
  mixed: io=4882.0MB, bw=166622KB/s, iops=162, runt= 30003msec
    clat (usec): min=4024, max=10440, avg=6142.11, stdev=417.35
     lat (usec): min=4024, max=10440, avg=6142.45, stdev=417.44
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5856],
     | 30.00th=[ 5984], 40.00th=[ 5984], 50.00th=[ 5984], 60.00th=[ 6176],
     | 70.00th=[ 6304], 80.00th=[ 6624], 90.00th=[ 6624], 95.00th=[ 6624],
     | 99.00th=[ 6688], 99.50th=[ 8160], 99.90th=[ 9152], 99.95th=[10304],
     | 99.99th=[10432]
    bw (KB  /s): min=   68, max=175426, per=98.37%, avg=163909.67, stdev=22796.70
    lat (msec) : 10=99.92%, 20=0.08%
  cpu          : usr=0.13%, sys=2.92%, ctx=7326, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4882/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=52876KB, aggrb=1751KB/s, minb=1751KB/s, maxb=1751KB/s, mint=30190msec, maxt=30190msec

Run status group 1 (all jobs):
  MIXED: io=58240KB, aggrb=1938KB/s, minb=1938KB/s, maxb=1938KB/s, mint=30051msec, maxt=30051msec

Run status group 2 (all jobs):
  MIXED: io=53576KB, aggrb=1777KB/s, minb=1777KB/s, maxb=1777KB/s, mint=30133msec, maxt=30133msec

Run status group 3 (all jobs):
  MIXED: io=4881.0MB, aggrb=166577KB/s, minb=166577KB/s, maxb=166577KB/s, mint=30005msec, maxt=30005msec

Run status group 4 (all jobs):
  MIXED: io=4882.0MB, aggrb=166622KB/s, minb=166622KB/s, maxb=166622KB/s, mint=30003msec, maxt=30003msec

Disk stats (read/write):
  sda: ios=50189/91651, merge=0/0, ticks=2043661/3146545, in_queue=5187961, util=99.39%
