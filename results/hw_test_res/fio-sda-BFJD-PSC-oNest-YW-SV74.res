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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19347: Sun Jun 12 14:29:03 2016
  mixed: io=52648KB, bw=1745.2KB/s, iops=436, runt= 30168msec
    clat (msec): min=52, max=171, avg=73.12, stdev=12.68
     lat (msec): min=52, max=171, avg=73.12, stdev=12.68
    clat percentiles (msec):
     |  1.00th=[   58],  5.00th=[   60], 10.00th=[   61], 20.00th=[   63],
     | 30.00th=[   65], 40.00th=[   68], 50.00th=[   71], 60.00th=[   73],
     | 70.00th=[   77], 80.00th=[   83], 90.00th=[   92], 95.00th=[   99],
     | 99.00th=[  112], 99.50th=[  119], 99.90th=[  163], 99.95th=[  169],
     | 99.99th=[  172]
    bw (KB  /s): min=    0, max=   62, per=3.06%, avg=53.32, stdev= 7.61
    lat (msec) : 100=95.52%, 250=4.48%
  cpu          : usr=0.02%, sys=0.13%, ctx=38427, majf=0, minf=13
  IO depths    : 1=145.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13162/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19383: Sun Jun 12 14:29:03 2016
  mixed: io=57728KB, bw=1913.2KB/s, iops=478, runt= 30174msec
    clat (msec): min=53, max=182, avg=66.66, stdev= 8.41
     lat (msec): min=53, max=182, avg=66.66, stdev= 8.41
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   65], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   77], 95.00th=[   82],
     | 99.00th=[  100], 99.50th=[  106], 99.90th=[  115], 99.95th=[  117],
     | 99.99th=[  184]
    bw (KB  /s): min=    0, max=   66, per=3.06%, avg=58.59, stdev= 8.36
    lat (msec) : 100=99.00%, 250=1.00%
  cpu          : usr=0.02%, sys=0.07%, ctx=21205, majf=0, minf=0
  IO depths    : 1=146.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14432/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19418: Sun Jun 12 14:29:03 2016
  mixed: io=53536KB, bw=1774.8KB/s, iops=443, runt= 30166msec
    clat (usec): min=492, max=1009.9K, avg=71853.35, stdev=86630.41
     lat (usec): min=492, max=1009.9K, avg=71853.86, stdev=86630.40
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   41], 60.00th=[   56],
     | 70.00th=[   80], 80.00th=[  117], 90.00th=[  182], 95.00th=[  249],
     | 99.00th=[  404], 99.50th=[  465], 99.90th=[  635], 99.95th=[  758],
     | 99.99th=[  938]
    bw (KB  /s): min=    0, max=  142, per=3.11%, avg=55.16, stdev=23.86
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.07%, 4=3.14%, 10=13.67%, 20=14.97%, 50=24.89%
    lat (msec) : 100=19.36%, 250=18.95%, 500=4.59%, 750=0.31%, 1000=0.04%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19525, majf=0, minf=0
  IO depths    : 1=145.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13384/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19451: Sun Jun 12 14:29:03 2016
  mixed: io=4990.0MB, bw=170297KB/s, iops=166, runt= 30005msec
    clat (usec): min=4313, max=18409, avg=5979.46, stdev=400.72
     lat (usec): min=4345, max=18451, avg=6010.17, stdev=401.01
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5600],
     | 30.00th=[ 5920], 40.00th=[ 5984], 50.00th=[ 5984], 60.00th=[ 5984],
     | 70.00th=[ 6048], 80.00th=[ 6176], 90.00th=[ 6240], 95.00th=[ 6624],
     | 99.00th=[ 6624], 99.50th=[ 8160], 99.90th=[ 9920], 99.95th=[ 9920],
     | 99.99th=[18304]
    bw (KB  /s): min=   68, max=175426, per=98.39%, avg=167554.37, stdev=22704.69
    lat (msec) : 10=99.98%, 20=0.02%
  cpu          : usr=0.94%, sys=2.27%, ctx=7487, majf=0, minf=0
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4990/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19455: Sun Jun 12 14:29:03 2016
  mixed: io=4991.0MB, bw=170342KB/s, iops=166, runt= 30003msec
    clat (usec): min=4025, max=11722, avg=6008.35, stdev=372.76
     lat (usec): min=4025, max=11722, avg=6008.66, stdev=372.83
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5600],
     | 30.00th=[ 5984], 40.00th=[ 5984], 50.00th=[ 5984], 60.00th=[ 5984],
     | 70.00th=[ 6048], 80.00th=[ 6240], 90.00th=[ 6304], 95.00th=[ 6624],
     | 99.00th=[ 6688], 99.50th=[ 8160], 99.90th=[ 9920], 99.95th=[ 9920],
     | 99.99th=[11712]
    bw (KB  /s): min=   68, max=175426, per=98.40%, avg=167609.80, stdev=22687.51
    lat (msec) : 10=99.98%, 20=0.02%
  cpu          : usr=0.12%, sys=2.92%, ctx=7489, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4991/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=52648KB, aggrb=1745KB/s, minb=1745KB/s, maxb=1745KB/s, mint=30168msec, maxt=30168msec

Run status group 1 (all jobs):
  MIXED: io=57728KB, aggrb=1913KB/s, minb=1913KB/s, maxb=1913KB/s, mint=30174msec, maxt=30174msec

Run status group 2 (all jobs):
  MIXED: io=53536KB, aggrb=1774KB/s, minb=1774KB/s, maxb=1774KB/s, mint=30166msec, maxt=30166msec

Run status group 3 (all jobs):
  MIXED: io=4990.0MB, aggrb=170296KB/s, minb=170296KB/s, maxb=170296KB/s, mint=30005msec, maxt=30005msec

Run status group 4 (all jobs):
  MIXED: io=4991.0MB, aggrb=170342KB/s, minb=170342KB/s, maxb=170342KB/s, mint=30003msec, maxt=30003msec

Disk stats (read/write):
  sda: ios=50881/91910, merge=0/0, ticks=2066386/3151237, in_queue=5215869, util=99.41%
 in_queue=7997382, util=100.00%
