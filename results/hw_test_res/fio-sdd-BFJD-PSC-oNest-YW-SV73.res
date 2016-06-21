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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19998: Sun Jun 12 14:55:40 2016
  mixed: io=58240KB, bw=1940.4KB/s, iops=485, runt= 30020msec
    clat (msec): min=53, max=94, avg=65.95, stdev= 6.50
     lat (msec): min=53, max=94, avg=65.95, stdev= 6.50
    clat percentiles (usec):
     |  1.00th=[56576],  5.00th=[58112], 10.00th=[58624], 20.00th=[60160],
     | 30.00th=[61184], 40.00th=[62720], 50.00th=[65280], 60.00th=[67072],
     | 70.00th=[69120], 80.00th=[70144], 90.00th=[75264], 95.00th=[78336],
     | 99.00th=[85504], 99.50th=[87552], 99.90th=[93696], 99.95th=[93696],
     | 99.99th=[94720]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=59.16, stdev= 8.16
    lat (msec) : 100=100.00%
  cpu          : usr=0.02%, sys=0.13%, ctx=43728, majf=0, minf=14
  IO depths    : 1=149.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14560/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=20033: Sun Jun 12 14:55:40 2016
  mixed: io=58240KB, bw=1938.7KB/s, iops=484, runt= 30042msec
    clat (msec): min=52, max=102, avg=65.97, stdev= 7.25
     lat (msec): min=52, max=102, avg=65.97, stdev= 7.25
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   60],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   65], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   76], 95.00th=[   80],
     | 99.00th=[   90], 99.50th=[   95], 99.90th=[  101], 99.95th=[  102],
     | 99.99th=[  103]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=59.19, stdev= 8.25
    lat (msec) : 100=99.88%, 250=0.12%
  cpu          : usr=0.02%, sys=0.07%, ctx=21947, majf=0, minf=0
  IO depths    : 1=150.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14560/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=20068: Sun Jun 12 14:55:40 2016
  mixed: io=53548KB, bw=1776.2KB/s, iops=444, runt= 30134msec
    clat (msec): min=1, max=982, avg=71.80, stdev=85.83
     lat (msec): min=1, max=982, avg=71.80, stdev=85.83
    clat percentiles (msec):
     |  1.00th=[    4],  5.00th=[    6], 10.00th=[    8], 20.00th=[   13],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   41], 60.00th=[   58],
     | 70.00th=[   80], 80.00th=[  115], 90.00th=[  180], 95.00th=[  245],
     | 99.00th=[  404], 99.50th=[  482], 99.90th=[  652], 99.95th=[  725],
     | 99.99th=[  938]
    bw (KB  /s): min=    0, max=  348, per=3.11%, avg=55.32, stdev=25.02
    lat (msec) : 2=0.04%, 4=2.17%, 10=12.90%, 20=16.06%, 50=24.98%
    lat (msec) : 100=20.18%, 250=18.99%, 500=4.30%, 750=0.34%, 1000=0.04%
  cpu          : usr=0.02%, sys=0.06%, ctx=19778, majf=0, minf=0
  IO depths    : 1=147.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13387/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=20103: Sun Jun 12 14:55:40 2016
  mixed: io=4829.0MB, bw=164824KB/s, iops=160, runt= 30001msec
    clat (usec): min=5458, max=15081, avg=6177.26, stdev=480.10
     lat (usec): min=5489, max=15114, avg=6208.22, stdev=480.09
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5600], 10.00th=[ 5728], 20.00th=[ 5856],
     | 30.00th=[ 5984], 40.00th=[ 6048], 50.00th=[ 6176], 60.00th=[ 6240],
     | 70.00th=[ 6304], 80.00th=[ 6432], 90.00th=[ 6752], 95.00th=[ 6752],
     | 99.00th=[ 7328], 99.50th=[ 8384], 99.90th=[14144], 99.95th=[14784],
     | 99.99th=[15040]
    bw (KB  /s): min=   68, max=175426, per=98.43%, avg=162233.68, stdev=22288.76
    lat (msec) : 10=99.81%, 20=0.19%
  cpu          : usr=0.81%, sys=2.71%, ctx=7230, majf=0, minf=532
  IO depths    : 1=149.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4829/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=20107: Sun Jun 12 14:55:40 2016
  mixed: io=4834.0MB, bw=164962KB/s, iops=161, runt= 30007msec
    clat (usec): min=5517, max=14853, avg=6202.40, stdev=413.81
     lat (usec): min=5517, max=14854, avg=6202.92, stdev=413.83
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5600], 10.00th=[ 5792], 20.00th=[ 5856],
     | 30.00th=[ 5984], 40.00th=[ 6112], 50.00th=[ 6240], 60.00th=[ 6304],
     | 70.00th=[ 6304], 80.00th=[ 6496], 90.00th=[ 6752], 95.00th=[ 6752],
     | 99.00th=[ 7392], 99.50th=[ 8256], 99.90th=[10048], 99.95th=[10048],
     | 99.99th=[14912]
    bw (KB  /s): min=   68, max=175426, per=98.42%, avg=162354.37, stdev=22302.54
    lat (msec) : 10=99.90%, 20=0.10%
  cpu          : usr=0.16%, sys=3.15%, ctx=7216, majf=0, minf=0
  IO depths    : 1=149.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4834/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=58240KB, aggrb=1940KB/s, minb=1940KB/s, maxb=1940KB/s, mint=30020msec, maxt=30020msec

Run status group 1 (all jobs):
  MIXED: io=58240KB, aggrb=1938KB/s, minb=1938KB/s, maxb=1938KB/s, mint=30042msec, maxt=30042msec

Run status group 2 (all jobs):
  MIXED: io=53548KB, aggrb=1776KB/s, minb=1776KB/s, maxb=1776KB/s, mint=30134msec, maxt=30134msec

Run status group 3 (all jobs):
  MIXED: io=4829.0MB, aggrb=164824KB/s, minb=164824KB/s, maxb=164824KB/s, mint=30001msec, maxt=30001msec

Run status group 4 (all jobs):
  MIXED: io=4834.0MB, aggrb=164962KB/s, minb=164962KB/s, maxb=164962KB/s, mint=30007msec, maxt=30007msec

Disk stats (read/write):
  sdd: ios=48713/94456, merge=0/0, ticks=1630293/2991346, in_queue=4621515, util=99.28%
