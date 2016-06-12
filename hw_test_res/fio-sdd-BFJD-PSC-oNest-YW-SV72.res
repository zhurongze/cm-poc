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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=20264: Sun Jun 12 14:55:40 2016
  mixed: io=59264KB, bw=1967.8KB/s, iops=491, runt= 30128msec
    clat (msec): min=52, max=161, avg=64.85, stdev= 6.03
     lat (msec): min=52, max=161, avg=64.86, stdev= 6.03
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   60],
     | 30.00th=[   61], 40.00th=[   62], 50.00th=[   64], 60.00th=[   67],
     | 70.00th=[   69], 80.00th=[   70], 90.00th=[   73], 95.00th=[   77],
     | 99.00th=[   82], 99.50th=[   86], 99.90th=[   95], 99.95th=[  101],
     | 99.99th=[  102]
    bw (KB  /s): min=    0, max=   67, per=3.06%, avg=60.14, stdev= 8.27
    lat (msec) : 100=99.91%, 250=0.09%
  cpu          : usr=0.02%, sys=0.14%, ctx=44912, majf=0, minf=16
  IO depths    : 1=151.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14816/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=20302: Sun Jun 12 14:55:40 2016
  mixed: io=59148KB, bw=1962.2KB/s, iops=490, runt= 30145msec
    clat (msec): min=52, max=146, avg=64.95, stdev= 6.03
     lat (msec): min=52, max=146, avg=64.95, stdev= 6.03
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   60],
     | 30.00th=[   61], 40.00th=[   63], 50.00th=[   64], 60.00th=[   67],
     | 70.00th=[   69], 80.00th=[   70], 90.00th=[   73], 95.00th=[   78],
     | 99.00th=[   82], 99.50th=[   85], 99.90th=[   89], 99.95th=[   92],
     | 99.99th=[  147]
    bw (KB  /s): min=    0, max=   67, per=3.06%, avg=60.11, stdev= 8.26
    lat (msec) : 100=99.98%, 250=0.02%
  cpu          : usr=0.02%, sys=0.08%, ctx=22355, majf=0, minf=0
  IO depths    : 1=151.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14787/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=20340: Sun Jun 12 14:55:40 2016
  mixed: io=53764KB, bw=1783.8KB/s, iops=445, runt= 30142msec
    clat (msec): min=1, max=1342, avg=71.53, stdev=84.77
     lat (msec): min=1, max=1342, avg=71.53, stdev=84.77
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   40], 60.00th=[   57],
     | 70.00th=[   83], 80.00th=[  117], 90.00th=[  182], 95.00th=[  245],
     | 99.00th=[  396], 99.50th=[  449], 99.90th=[  619], 99.95th=[  652],
     | 99.99th=[  791]
    bw (KB  /s): min=    0, max=  153, per=3.09%, avg=55.18, stdev=24.41
    lat (msec) : 2=0.04%, 4=3.33%, 10=13.55%, 20=15.42%, 50=23.93%
    lat (msec) : 100=19.54%, 250=19.42%, 500=4.53%, 750=0.21%, 1000=0.01%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19842, majf=0, minf=0
  IO depths    : 1=147.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13441/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=20374: Sun Jun 12 14:55:40 2016
  mixed: io=4814.0MB, bw=164307KB/s, iops=160, runt= 30002msec
    clat (usec): min=4324, max=19049, avg=6196.53, stdev=406.41
     lat (usec): min=4357, max=19065, avg=6227.72, stdev=406.20
    clat percentiles (usec):
     |  1.00th=[ 5728],  5.00th=[ 5792], 10.00th=[ 5792], 20.00th=[ 5920],
     | 30.00th=[ 6176], 40.00th=[ 6240], 50.00th=[ 6240], 60.00th=[ 6240],
     | 70.00th=[ 6368], 80.00th=[ 6368], 90.00th=[ 6368], 95.00th=[ 6432],
     | 99.00th=[ 6432], 99.50th=[ 8384], 99.90th=[10304], 99.95th=[14656],
     | 99.99th=[19072]
    bw (KB  /s): min=   68, max=167936, per=98.42%, avg=161712.40, stdev=21315.65
    lat (msec) : 10=99.83%, 20=0.17%
  cpu          : usr=0.96%, sys=2.54%, ctx=7220, majf=0, minf=266
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4814/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=20378: Sun Jun 12 14:55:40 2016
  mixed: io=4800.0MB, bw=163807KB/s, iops=159, runt= 30006msec
    clat (msec): min=4, max=111, avg= 6.25, stdev= 1.59
     lat (msec): min=4, max=111, avg= 6.25, stdev= 1.59
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    6],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   11], 99.95th=[   11],
     | 99.99th=[  113]
    bw (KB  /s): min=   68, max=167936, per=98.40%, avg=161193.88, stdev=21848.97
    lat (msec) : 10=99.85%, 20=0.10%, 50=0.02%, 250=0.02%
  cpu          : usr=0.24%, sys=2.98%, ctx=7207, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4800/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=59264KB, aggrb=1967KB/s, minb=1967KB/s, maxb=1967KB/s, mint=30128msec, maxt=30128msec

Run status group 1 (all jobs):
  MIXED: io=59148KB, aggrb=1962KB/s, minb=1962KB/s, maxb=1962KB/s, mint=30145msec, maxt=30145msec

Run status group 2 (all jobs):
  MIXED: io=53764KB, aggrb=1783KB/s, minb=1783KB/s, maxb=1783KB/s, mint=30142msec, maxt=30142msec

Run status group 3 (all jobs):
  MIXED: io=4814.0MB, aggrb=164306KB/s, minb=164306KB/s, maxb=164306KB/s, mint=30002msec, maxt=30002msec

Run status group 4 (all jobs):
  MIXED: io=4800.0MB, aggrb=163807KB/s, minb=163807KB/s, maxb=163807KB/s, mint=30006msec, maxt=30006msec

Disk stats (read/write):
  sdd: ios=48966/96029, merge=0/0, ticks=1553824/3009680, in_queue=4563388, util=99.14%
