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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=29799: Sun Jun 12 14:55:39 2016
  mixed: io=59012KB, bw=1959.7KB/s, iops=489, runt= 30114msec
    clat (msec): min=51, max=166, avg=65.10, stdev= 6.30
     lat (msec): min=51, max=166, avg=65.10, stdev= 6.30
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   64], 60.00th=[   66],
     | 70.00th=[   69], 80.00th=[   71], 90.00th=[   74], 95.00th=[   78],
     | 99.00th=[   85], 99.50th=[   88], 99.90th=[   95], 99.95th=[   96],
     | 99.99th=[  116]
    bw (KB  /s): min=    0, max=   66, per=3.06%, avg=60.03, stdev= 8.27
    lat (msec) : 100=99.99%, 250=0.01%
  cpu          : usr=0.02%, sys=0.14%, ctx=44202, majf=0, minf=12
  IO depths    : 1=149.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14753/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=29838: Sun Jun 12 14:55:39 2016
  mixed: io=59264KB, bw=1973.2KB/s, iops=493, runt= 30036msec
    clat (msec): min=53, max=103, avg=64.85, stdev= 6.35
     lat (msec): min=53, max=103, avg=64.85, stdev= 6.35
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   58], 10.00th=[   59], 20.00th=[   60],
     | 30.00th=[   61], 40.00th=[   62], 50.00th=[   63], 60.00th=[   66],
     | 70.00th=[   68], 80.00th=[   70], 90.00th=[   74], 95.00th=[   78],
     | 99.00th=[   86], 99.50th=[   89], 99.90th=[  102], 99.95th=[  102],
     | 99.99th=[  103]
    bw (KB  /s): min=    0, max=   67, per=3.05%, avg=60.12, stdev= 8.32
    lat (msec) : 100=99.87%, 250=0.13%
  cpu          : usr=0.02%, sys=0.08%, ctx=22448, majf=0, minf=0
  IO depths    : 1=151.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14816/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=29873: Sun Jun 12 14:55:39 2016
  mixed: io=52780KB, bw=1751.1KB/s, iops=437, runt= 30126msec
    clat (msec): min=1, max=826, avg=72.87, stdev=85.05
     lat (msec): min=1, max=826, avg=72.87, stdev=85.05
    clat percentiles (msec):
     |  1.00th=[    4],  5.00th=[    6], 10.00th=[    9], 20.00th=[   13],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   42], 60.00th=[   59],
     | 70.00th=[   82], 80.00th=[  118], 90.00th=[  182], 95.00th=[  243],
     | 99.00th=[  400], 99.50th=[  461], 99.90th=[  611], 99.95th=[  709],
     | 99.99th=[  807]
    bw (KB  /s): min=    0, max=  207, per=3.11%, avg=54.53, stdev=24.59
    lat (msec) : 2=0.03%, 4=1.33%, 10=12.80%, 20=16.19%, 50=25.16%
    lat (msec) : 100=20.15%, 250=19.67%, 500=4.36%, 750=0.30%, 1000=0.02%
  cpu          : usr=0.02%, sys=0.06%, ctx=19470, majf=0, minf=0
  IO depths    : 1=147.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13195/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=29911: Sun Jun 12 14:55:39 2016
  mixed: io=4904.0MB, bw=167373KB/s, iops=163, runt= 30003msec
    clat (usec): min=5468, max=10210, avg=6082.56, stdev=334.10
     lat (usec): min=5511, max=10243, avg=6113.70, stdev=333.94
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5728], 20.00th=[ 5792],
     | 30.00th=[ 5920], 40.00th=[ 5984], 50.00th=[ 6176], 60.00th=[ 6176],
     | 70.00th=[ 6176], 80.00th=[ 6240], 90.00th=[ 6368], 95.00th=[ 6560],
     | 99.00th=[ 6624], 99.50th=[ 8160], 99.90th=[ 8640], 99.95th=[10176],
     | 99.99th=[10176]
    bw (KB  /s): min=   68, max=175426, per=98.41%, avg=164712.33, stdev=22051.07
    lat (msec) : 10=99.92%, 20=0.08%
  cpu          : usr=0.97%, sys=2.52%, ctx=7361, majf=0, minf=266
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4904/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=29916: Sun Jun 12 14:55:39 2016
  mixed: io=4904.0MB, bw=167368KB/s, iops=163, runt= 30004msec
    clat (usec): min=5505, max=10285, avg=6113.37, stdev=332.74
     lat (usec): min=5506, max=10286, avg=6113.87, stdev=332.75
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5728], 20.00th=[ 5856],
     | 30.00th=[ 5984], 40.00th=[ 5984], 50.00th=[ 6176], 60.00th=[ 6240],
     | 70.00th=[ 6240], 80.00th=[ 6304], 90.00th=[ 6368], 95.00th=[ 6560],
     | 99.00th=[ 6624], 99.50th=[ 8256], 99.90th=[ 8768], 99.95th=[10176],
     | 99.99th=[10304]
    bw (KB  /s): min=   68, max=175426, per=98.41%, avg=164709.83, stdev=22060.15
    lat (msec) : 10=99.92%, 20=0.08%
  cpu          : usr=0.20%, sys=3.07%, ctx=7323, majf=0, minf=0
  IO depths    : 1=149.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4904/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=59012KB, aggrb=1959KB/s, minb=1959KB/s, maxb=1959KB/s, mint=30114msec, maxt=30114msec

Run status group 1 (all jobs):
  MIXED: io=59264KB, aggrb=1973KB/s, minb=1973KB/s, maxb=1973KB/s, mint=30036msec, maxt=30036msec

Run status group 2 (all jobs):
  MIXED: io=52780KB, aggrb=1751KB/s, minb=1751KB/s, maxb=1751KB/s, mint=30126msec, maxt=30126msec

Run status group 3 (all jobs):
  MIXED: io=4904.0MB, aggrb=167373KB/s, minb=167373KB/s, maxb=167373KB/s, mint=30003msec, maxt=30003msec

Run status group 4 (all jobs):
  MIXED: io=4904.0MB, aggrb=167367KB/s, minb=167367KB/s, maxb=167367KB/s, mint=30004msec, maxt=30004msec

Disk stats (read/write):
  sdd: ios=48982/95922, merge=0/0, ticks=1586144/2990348, in_queue=4576367, util=99.14%
