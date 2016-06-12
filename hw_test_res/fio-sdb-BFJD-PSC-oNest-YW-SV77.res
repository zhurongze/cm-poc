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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19424: Sun Jun 12 14:50:57 2016
  mixed: io=58752KB, bw=1956.4KB/s, iops=489, runt= 30032msec
    clat (msec): min=52, max=97, avg=65.41, stdev= 6.56
     lat (msec): min=52, max=97, avg=65.41, stdev= 6.56
    clat percentiles (usec):
     |  1.00th=[55552],  5.00th=[57600], 10.00th=[58624], 20.00th=[59648],
     | 30.00th=[61184], 40.00th=[62208], 50.00th=[63744], 60.00th=[66048],
     | 70.00th=[68096], 80.00th=[70144], 90.00th=[75264], 95.00th=[77312],
     | 99.00th=[85504], 99.50th=[87552], 99.90th=[92672], 99.95th=[93696],
     | 99.99th=[97792]
    bw (KB  /s): min=    0, max=   65, per=3.05%, avg=59.66, stdev= 8.16
    lat (msec) : 100=100.00%
  cpu          : usr=0.03%, sys=0.13%, ctx=44151, majf=0, minf=15
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14688/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19460: Sun Jun 12 14:50:57 2016
  mixed: io=57984KB, bw=1928.8KB/s, iops=482, runt= 30063msec
    clat (msec): min=52, max=105, avg=66.33, stdev= 7.18
     lat (msec): min=52, max=105, avg=66.33, stdev= 7.18
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   66], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   77], 95.00th=[   80],
     | 99.00th=[   89], 99.50th=[   93], 99.90th=[  103], 99.95th=[  104],
     | 99.99th=[  105]
    bw (KB  /s): min=    0, max=   65, per=3.05%, avg=58.89, stdev= 8.21
    lat (msec) : 100=99.88%, 250=0.12%
  cpu          : usr=0.02%, sys=0.07%, ctx=21781, majf=0, minf=0
  IO depths    : 1=149.8%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14496/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19497: Sun Jun 12 14:50:57 2016
  mixed: io=53744KB, bw=1782.2KB/s, iops=445, runt= 30157msec
    clat (msec): min=1, max=875, avg=71.57, stdev=85.08
     lat (msec): min=1, max=875, avg=71.57, stdev=85.08
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   29], 50.00th=[   41], 60.00th=[   58],
     | 70.00th=[   81], 80.00th=[  116], 90.00th=[  180], 95.00th=[  241],
     | 99.00th=[  408], 99.50th=[  474], 99.90th=[  619], 99.95th=[  660],
     | 99.99th=[  775]
    bw (KB  /s): min=    0, max=  180, per=3.11%, avg=55.38, stdev=24.89
    lat (msec) : 2=0.09%, 4=3.19%, 10=13.72%, 20=14.74%, 50=24.56%
    lat (msec) : 100=19.69%, 250=19.42%, 500=4.24%, 750=0.34%, 1000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19767, majf=0, minf=0
  IO depths    : 1=147.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13436/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19529: Sun Jun 12 14:50:57 2016
  mixed: io=4632.0MB, bw=158090KB/s, iops=154, runt= 30003msec
    clat (msec): min=4, max=301, avg= 6.44, stdev= 4.36
     lat (msec): min=4, max=301, avg= 6.47, stdev= 4.36
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    7],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   15], 99.95th=[   19],
     | 99.99th=[  302]
    bw (KB  /s): min=   68, max=165227, per=98.57%, avg=155827.62, stdev=23253.01
    lat (msec) : 10=99.78%, 20=0.17%, 50=0.02%, 500=0.02%
  cpu          : usr=0.89%, sys=2.30%, ctx=6971, majf=0, minf=0
  IO depths    : 1=150.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4632/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19533: Sun Jun 12 14:50:57 2016
  mixed: io=4685.0MB, bw=159893KB/s, iops=156, runt= 30004msec
    clat (usec): min=4030, max=14917, avg=6399.61, stdev=349.27
     lat (usec): min=4031, max=14918, avg=6400.09, stdev=349.27
    clat percentiles (usec):
     |  1.00th=[ 5920],  5.00th=[ 5920], 10.00th=[ 5984], 20.00th=[ 6176],
     | 30.00th=[ 6304], 40.00th=[ 6368], 50.00th=[ 6432], 60.00th=[ 6432],
     | 70.00th=[ 6560], 80.00th=[ 6624], 90.00th=[ 6688], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[10560], 99.95th=[10816],
     | 99.99th=[14912]
    bw (KB  /s): min=   68, max=165227, per=98.43%, avg=157389.10, stdev=20920.89
    lat (msec) : 10=99.87%, 20=0.13%
  cpu          : usr=0.15%, sys=3.01%, ctx=7031, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4685/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=58752KB, aggrb=1956KB/s, minb=1956KB/s, maxb=1956KB/s, mint=30032msec, maxt=30032msec

Run status group 1 (all jobs):
  MIXED: io=57984KB, aggrb=1928KB/s, minb=1928KB/s, maxb=1928KB/s, mint=30063msec, maxt=30063msec

Run status group 2 (all jobs):
  MIXED: io=53744KB, aggrb=1782KB/s, minb=1782KB/s, maxb=1782KB/s, mint=30157msec, maxt=30157msec

Run status group 3 (all jobs):
  MIXED: io=4632.0MB, aggrb=158089KB/s, minb=158089KB/s, maxb=158089KB/s, mint=30003msec, maxt=30003msec

Run status group 4 (all jobs):
  MIXED: io=4685.0MB, aggrb=159893KB/s, minb=159893KB/s, maxb=159893KB/s, mint=30004msec, maxt=30004msec

Disk stats (read/write):
  sdc: ios=47964/93676, merge=0/0, ticks=1604877/3021192, in_queue=4625950, util=99.24%
