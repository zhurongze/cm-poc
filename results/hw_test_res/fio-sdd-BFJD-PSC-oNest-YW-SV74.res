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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19833: Sun Jun 12 14:55:39 2016
  mixed: io=57088KB, bw=1901.1KB/s, iops=475, runt= 30029msec
    clat (msec): min=53, max=101, avg=67.32, stdev= 7.47
     lat (msec): min=53, max=101, avg=67.32, stdev= 7.47
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   63], 40.00th=[   65], 50.00th=[   68], 60.00th=[   69],
     | 70.00th=[   71], 80.00th=[   74], 90.00th=[   78], 95.00th=[   82],
     | 99.00th=[   89], 99.50th=[   92], 99.90th=[   96], 99.95th=[  100],
     | 99.99th=[  102]
    bw (KB  /s): min=    0, max=   65, per=3.05%, avg=57.93, stdev= 8.16
    lat (msec) : 100=99.96%, 250=0.04%
  cpu          : usr=0.03%, sys=0.14%, ctx=43223, majf=0, minf=17
  IO depths    : 1=151.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14272/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19870: Sun Jun 12 14:55:39 2016
  mixed: io=57088KB, bw=1900.9KB/s, iops=475, runt= 30033msec
    clat (msec): min=51, max=125, avg=67.31, stdev= 8.15
     lat (msec): min=51, max=125, avg=67.31, stdev= 8.15
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   64], 50.00th=[   68], 60.00th=[   69],
     | 70.00th=[   71], 80.00th=[   74], 90.00th=[   78], 95.00th=[   82],
     | 99.00th=[   94], 99.50th=[  103], 99.90th=[  118], 99.95th=[  118],
     | 99.99th=[  126]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=58.03, stdev= 8.19
    lat (msec) : 100=99.40%, 250=0.60%
  cpu          : usr=0.02%, sys=0.07%, ctx=21434, majf=0, minf=0
  IO depths    : 1=149.8%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14272/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19905: Sun Jun 12 14:55:39 2016
  mixed: io=53588KB, bw=1779.3KB/s, iops=444, runt= 30119msec
    clat (msec): min=1, max=936, avg=71.75, stdev=88.38
     lat (msec): min=1, max=936, avg=71.75, stdev=88.38
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   40], 60.00th=[   57],
     | 70.00th=[   79], 80.00th=[  115], 90.00th=[  180], 95.00th=[  251],
     | 99.00th=[  416], 99.50th=[  502], 99.90th=[  685], 99.95th=[  807],
     | 99.99th=[  898]
    bw (KB  /s): min=    0, max=  153, per=3.11%, avg=55.37, stdev=25.00
    lat (msec) : 2=0.05%, 4=3.24%, 10=13.62%, 20=15.42%, 50=24.30%
    lat (msec) : 100=19.78%, 250=18.55%, 500=4.52%, 750=0.43%, 1000=0.09%
  cpu          : usr=0.01%, sys=0.06%, ctx=19754, majf=0, minf=0
  IO depths    : 1=147.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13397/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19940: Sun Jun 12 14:55:39 2016
  mixed: io=4748.0MB, bw=162038KB/s, iops=158, runt= 30005msec
    clat (usec): min=5614, max=14996, avg=6285.28, stdev=457.50
     lat (usec): min=5648, max=15013, avg=6316.12, stdev=457.37
    clat percentiles (usec):
     |  1.00th=[ 5664],  5.00th=[ 5728], 10.00th=[ 5856], 20.00th=[ 6048],
     | 30.00th=[ 6112], 40.00th=[ 6176], 50.00th=[ 6304], 60.00th=[ 6368],
     | 70.00th=[ 6432], 80.00th=[ 6560], 90.00th=[ 6624], 95.00th=[ 6624],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[14656], 99.95th=[15040],
     | 99.99th=[15040]
    bw (KB  /s): min=   68, max=171346, per=98.46%, avg=159547.35, stdev=21519.13
    lat (msec) : 10=99.79%, 20=0.21%
  cpu          : usr=0.90%, sys=2.16%, ctx=7128, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4748/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19944: Sun Jun 12 14:55:39 2016
  mixed: io=4741.0MB, bw=161810KB/s, iops=158, runt= 30003msec
    clat (msec): min=4, max=85, avg= 6.32, stdev= 1.23
     lat (msec): min=4, max=85, avg= 6.32, stdev= 1.23
    clat percentiles (usec):
     |  1.00th=[ 5664],  5.00th=[ 5728], 10.00th=[ 5856], 20.00th=[ 6048],
     | 30.00th=[ 6176], 40.00th=[ 6176], 50.00th=[ 6304], 60.00th=[ 6368],
     | 70.00th=[ 6496], 80.00th=[ 6624], 90.00th=[ 6624], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8384], 99.90th=[10432], 99.95th=[10560],
     | 99.99th=[85504]
    bw (KB  /s): min=   68, max=171346, per=98.45%, avg=159296.82, stdev=21795.43
    lat (msec) : 10=99.87%, 20=0.08%, 50=0.02%, 100=0.02%
  cpu          : usr=0.21%, sys=2.91%, ctx=7130, majf=0, minf=0
  IO depths    : 1=150.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4741/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=57088KB, aggrb=1901KB/s, minb=1901KB/s, maxb=1901KB/s, mint=30029msec, maxt=30029msec

Run status group 1 (all jobs):
  MIXED: io=57088KB, aggrb=1900KB/s, minb=1900KB/s, maxb=1900KB/s, mint=30033msec, maxt=30033msec

Run status group 2 (all jobs):
  MIXED: io=53588KB, aggrb=1779KB/s, minb=1779KB/s, maxb=1779KB/s, mint=30119msec, maxt=30119msec

Run status group 3 (all jobs):
  MIXED: io=4748.0MB, aggrb=162038KB/s, minb=162038KB/s, maxb=162038KB/s, mint=30005msec, maxt=30005msec

Run status group 4 (all jobs):
  MIXED: io=4741.0MB, aggrb=161809KB/s, minb=161809KB/s, maxb=161809KB/s, mint=30003msec, maxt=30003msec

Disk stats (read/write):
  sdd: ios=48511/93069, merge=0/0, ticks=1605059/3040008, in_queue=4644953, util=99.17%
