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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19834: Sun Jun 12 14:50:57 2016
  mixed: io=57540KB, bw=1907.7KB/s, iops=476, runt= 30163msec
    clat (msec): min=52, max=164, avg=66.92, stdev= 7.39
     lat (msec): min=52, max=164, avg=66.92, stdev= 7.39
    clat percentiles (msec):
     |  1.00th=[   58],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   63], 40.00th=[   64], 50.00th=[   66], 60.00th=[   69],
     | 70.00th=[   71], 80.00th=[   72], 90.00th=[   77], 95.00th=[   80],
     | 99.00th=[   87], 99.50th=[   89], 99.90th=[  159], 99.95th=[  161],
     | 99.99th=[  165]
    bw (KB  /s): min=    0, max=   64, per=3.06%, avg=58.44, stdev= 8.10
    lat (msec) : 100=99.88%, 250=0.12%
  cpu          : usr=0.02%, sys=0.14%, ctx=42940, majf=0, minf=20
  IO depths    : 1=148.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14385/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19874: Sun Jun 12 14:50:57 2016
  mixed: io=57856KB, bw=1927.6KB/s, iops=481, runt= 30015msec
    clat (msec): min=54, max=104, avg=66.38, stdev= 6.45
     lat (msec): min=54, max=104, avg=66.38, stdev= 6.45
    clat percentiles (usec):
     |  1.00th=[57088],  5.00th=[58624], 10.00th=[59648], 20.00th=[61184],
     | 30.00th=[62208], 40.00th=[63232], 50.00th=[64768], 60.00th=[67072],
     | 70.00th=[69120], 80.00th=[71168], 90.00th=[76288], 95.00th=[78336],
     | 99.00th=[84480], 99.50th=[89600], 99.90th=[92672], 99.95th=[96768],
     | 99.99th=[97792]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=58.82, stdev= 8.17
    lat (msec) : 100=99.99%, 250=0.01%
  cpu          : usr=0.02%, sys=0.07%, ctx=21825, majf=0, minf=0
  IO depths    : 1=150.8%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14464/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19909: Sun Jun 12 14:50:57 2016
  mixed: io=52040KB, bw=1724.8KB/s, iops=431, runt= 30172msec
    clat (msec): min=1, max=1025, avg=73.92, stdev=87.52
     lat (msec): min=1, max=1025, avg=73.92, stdev=87.52
    clat percentiles (msec):
     |  1.00th=[    4],  5.00th=[    7], 10.00th=[    9], 20.00th=[   14],
     | 30.00th=[   21], 40.00th=[   30], 50.00th=[   42], 60.00th=[   59],
     | 70.00th=[   83], 80.00th=[  119], 90.00th=[  184], 95.00th=[  251],
     | 99.00th=[  420], 99.50th=[  486], 99.90th=[  627], 99.95th=[  693],
     | 99.99th=[  906]
    bw (KB  /s): min=    0, max=  144, per=3.12%, avg=53.86, stdev=24.68
    lat (msec) : 2=0.02%, 4=1.28%, 10=12.28%, 20=16.45%, 50=25.55%
    lat (msec) : 100=19.77%, 250=19.58%, 500=4.62%, 750=0.43%, 1000=0.02%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.05%, ctx=19297, majf=0, minf=0
  IO depths    : 1=147.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13010/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19948: Sun Jun 12 14:50:57 2016
  mixed: io=4821.0MB, bw=164540KB/s, iops=160, runt= 30003msec
    clat (msec): min=4, max=173, avg= 6.19, stdev= 2.46
     lat (msec): min=4, max=173, avg= 6.22, stdev= 2.46
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    6],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   11], 99.95th=[   11],
     | 99.99th=[  174]
    bw (KB  /s): min=   68, max=172356, per=98.48%, avg=162031.43, stdev=22820.86
    lat (msec) : 10=99.88%, 20=0.08%, 50=0.02%, 250=0.02%
  cpu          : usr=0.91%, sys=2.57%, ctx=7242, majf=0, minf=266
  IO depths    : 1=150.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4821/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19952: Sun Jun 12 14:50:57 2016
  mixed: io=4851.0MB, bw=165548KB/s, iops=161, runt= 30006msec
    clat (usec): min=4025, max=14439, avg=6180.73, stdev=384.01
     lat (usec): min=4025, max=14440, avg=6181.24, stdev=384.01
    clat percentiles (usec):
     |  1.00th=[ 5664],  5.00th=[ 5664], 10.00th=[ 5728], 20.00th=[ 5984],
     | 30.00th=[ 6112], 40.00th=[ 6112], 50.00th=[ 6176], 60.00th=[ 6240],
     | 70.00th=[ 6304], 80.00th=[ 6368], 90.00th=[ 6496], 95.00th=[ 6560],
     | 99.00th=[ 6624], 99.50th=[ 8384], 99.90th=[10176], 99.95th=[13504],
     | 99.99th=[14400]
    bw (KB  /s): min=   68, max=172356, per=98.44%, avg=162971.52, stdev=21781.36
    lat (msec) : 10=99.86%, 20=0.14%
  cpu          : usr=0.16%, sys=3.13%, ctx=7274, majf=0, minf=0
  IO depths    : 1=149.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4851/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=57540KB, aggrb=1907KB/s, minb=1907KB/s, maxb=1907KB/s, mint=30163msec, maxt=30163msec

Run status group 1 (all jobs):
  MIXED: io=57856KB, aggrb=1927KB/s, minb=1927KB/s, maxb=1927KB/s, mint=30015msec, maxt=30015msec

Run status group 2 (all jobs):
  MIXED: io=52040KB, aggrb=1724KB/s, minb=1724KB/s, maxb=1724KB/s, mint=30172msec, maxt=30172msec

Run status group 3 (all jobs):
  MIXED: io=4821.0MB, aggrb=164540KB/s, minb=164540KB/s, maxb=164540KB/s, mint=30003msec, maxt=30003msec

Run status group 4 (all jobs):
  MIXED: io=4851.0MB, aggrb=165547KB/s, minb=165547KB/s, maxb=165547KB/s, mint=30006msec, maxt=30006msec

Disk stats (read/write):
  sdc: ios=48581/93623, merge=0/0, ticks=1584542/2993001, in_queue=4577446, util=99.18%
