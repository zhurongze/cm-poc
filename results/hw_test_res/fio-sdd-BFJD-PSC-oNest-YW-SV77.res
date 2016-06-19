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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19583: Sun Jun 12 14:55:40 2016
  mixed: io=58876KB, bw=1950.1KB/s, iops=487, runt= 30178msec
    clat (msec): min=52, max=179, avg=65.54, stdev= 8.31
     lat (msec): min=52, max=179, avg=65.54, stdev= 8.31
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   57], 10.00th=[   58], 20.00th=[   60],
     | 30.00th=[   61], 40.00th=[   62], 50.00th=[   64], 60.00th=[   67],
     | 70.00th=[   69], 80.00th=[   72], 90.00th=[   76], 95.00th=[   79],
     | 99.00th=[   88], 99.50th=[   92], 99.90th=[  172], 99.95th=[  172],
     | 99.99th=[  180]
    bw (KB  /s): min=    0, max=   68, per=3.06%, avg=59.66, stdev= 8.34
    lat (msec) : 100=99.82%, 250=0.18%
  cpu          : usr=0.02%, sys=0.15%, ctx=44586, majf=0, minf=9
  IO depths    : 1=151.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14719/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19623: Sun Jun 12 14:55:40 2016
  mixed: io=58880KB, bw=1960.5KB/s, iops=490, runt= 30034msec
    clat (msec): min=51, max=94, avg=65.28, stdev= 6.79
     lat (msec): min=51, max=94, avg=65.28, stdev= 6.79
    clat percentiles (usec):
     |  1.00th=[54528],  5.00th=[56576], 10.00th=[57600], 20.00th=[59136],
     | 30.00th=[60672], 40.00th=[61696], 50.00th=[64256], 60.00th=[66048],
     | 70.00th=[68096], 80.00th=[70144], 90.00th=[75264], 95.00th=[78336],
     | 99.00th=[84480], 99.50th=[85504], 99.90th=[91648], 99.95th=[93696],
     | 99.99th=[93696]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=59.76, stdev= 8.33
    lat (msec) : 100=100.00%
  cpu          : usr=0.02%, sys=0.08%, ctx=22245, majf=0, minf=0
  IO depths    : 1=151.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14720/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19657: Sun Jun 12 14:55:40 2016
  mixed: io=52856KB, bw=1751.4KB/s, iops=437, runt= 30180msec
    clat (msec): min=1, max=1044, avg=72.77, stdev=85.79
     lat (msec): min=1, max=1044, avg=72.77, stdev=85.79
    clat percentiles (msec):
     |  1.00th=[    4],  5.00th=[    6], 10.00th=[    9], 20.00th=[   14],
     | 30.00th=[   21], 40.00th=[   30], 50.00th=[   42], 60.00th=[   59],
     | 70.00th=[   82], 80.00th=[  116], 90.00th=[  178], 95.00th=[  245],
     | 99.00th=[  412], 99.50th=[  478], 99.90th=[  652], 99.95th=[  709],
     | 99.99th=[  766]
    bw (KB  /s): min=    0, max=  154, per=3.11%, avg=54.42, stdev=24.25
    lat (msec) : 2=0.04%, 4=1.37%, 10=11.81%, 20=16.20%, 50=26.16%
    lat (msec) : 100=20.59%, 250=19.06%, 500=4.33%, 750=0.42%, 1000=0.02%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19267, majf=0, minf=0
  IO depths    : 1=145.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13214/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19695: Sun Jun 12 14:55:40 2016
  mixed: io=4760.0MB, bw=162458KB/s, iops=158, runt= 30003msec
    clat (usec): min=5568, max=10287, avg=6267.69, stdev=325.43
     lat (usec): min=5600, max=10320, avg=6298.84, stdev=325.26
    clat percentiles (usec):
     |  1.00th=[ 5600],  5.00th=[ 5856], 10.00th=[ 5856], 20.00th=[ 6048],
     | 30.00th=[ 6112], 40.00th=[ 6240], 50.00th=[ 6304], 60.00th=[ 6304],
     | 70.00th=[ 6496], 80.00th=[ 6560], 90.00th=[ 6560], 95.00th=[ 6560],
     | 99.00th=[ 6560], 99.50th=[ 8384], 99.90th=[ 8768], 99.95th=[10304],
     | 99.99th=[10304]
    bw (KB  /s): min=   68, max=172698, per=98.42%, avg=159899.25, stdev=21372.82
    lat (msec) : 10=99.92%, 20=0.08%
  cpu          : usr=0.89%, sys=2.48%, ctx=7147, majf=0, minf=266
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4760/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19699: Sun Jun 12 14:55:40 2016
  mixed: io=4760.0MB, bw=162464KB/s, iops=158, runt= 30002msec
    clat (usec): min=5598, max=10300, avg=6298.29, stdev=326.26
     lat (usec): min=5598, max=10300, avg=6298.77, stdev=326.27
    clat percentiles (usec):
     |  1.00th=[ 5600],  5.00th=[ 5856], 10.00th=[ 5856], 20.00th=[ 6048],
     | 30.00th=[ 6176], 40.00th=[ 6304], 50.00th=[ 6304], 60.00th=[ 6368],
     | 70.00th=[ 6560], 80.00th=[ 6560], 90.00th=[ 6560], 95.00th=[ 6560],
     | 99.00th=[ 6624], 99.50th=[ 8512], 99.90th=[ 8768], 99.95th=[10304],
     | 99.99th=[10304]
    bw (KB  /s): min=   68, max=172698, per=98.43%, avg=159904.32, stdev=21400.66
    lat (msec) : 10=99.92%, 20=0.08%
  cpu          : usr=0.19%, sys=2.99%, ctx=7114, majf=0, minf=0
  IO depths    : 1=149.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4760/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=58876KB, aggrb=1950KB/s, minb=1950KB/s, maxb=1950KB/s, mint=30178msec, maxt=30178msec

Run status group 1 (all jobs):
  MIXED: io=58880KB, aggrb=1960KB/s, minb=1960KB/s, maxb=1960KB/s, mint=30034msec, maxt=30034msec

Run status group 2 (all jobs):
  MIXED: io=52856KB, aggrb=1751KB/s, minb=1751KB/s, maxb=1751KB/s, mint=30180msec, maxt=30180msec

Run status group 3 (all jobs):
  MIXED: io=4760.0MB, aggrb=162458KB/s, minb=162458KB/s, maxb=162458KB/s, mint=30003msec, maxt=30003msec

Run status group 4 (all jobs):
  MIXED: io=4760.0MB, aggrb=162463KB/s, minb=162463KB/s, maxb=162463KB/s, mint=30002msec, maxt=30002msec

Disk stats (read/write):
  sdd: ios=47954/95303, merge=0/0, ticks=1587704/3033781, in_queue=4621378, util=99.15%
