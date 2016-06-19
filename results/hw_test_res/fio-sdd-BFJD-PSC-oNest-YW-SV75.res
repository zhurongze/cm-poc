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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19268: Sun Jun 12 14:55:39 2016
  mixed: io=57984KB, bw=1929.3KB/s, iops=482, runt= 30056msec
    clat (msec): min=53, max=100, avg=66.33, stdev= 7.50
     lat (msec): min=53, max=100, avg=66.34, stdev= 7.50
    clat percentiles (usec):
     |  1.00th=[55040],  5.00th=[57088], 10.00th=[58112], 20.00th=[59648],
     | 30.00th=[61184], 40.00th=[62720], 50.00th=[65280], 60.00th=[67072],
     | 70.00th=[69120], 80.00th=[72192], 90.00th=[77312], 95.00th=[81408],
     | 99.00th=[86528], 99.50th=[89600], 99.90th=[93696], 99.95th=[94720],
     | 99.99th=[95744]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=58.79, stdev= 8.28
    lat (msec) : 100=99.99%, 250=0.01%
  cpu          : usr=0.02%, sys=0.15%, ctx=43769, majf=0, minf=8
  IO depths    : 1=150.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14496/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19303: Sun Jun 12 14:55:39 2016
  mixed: io=58752KB, bw=1956.1KB/s, iops=489, runt= 30022msec
    clat (msec): min=52, max=121, avg=65.39, stdev= 7.52
     lat (msec): min=52, max=121, avg=65.39, stdev= 7.52
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   60],
     | 30.00th=[   61], 40.00th=[   62], 50.00th=[   64], 60.00th=[   67],
     | 70.00th=[   69], 80.00th=[   71], 90.00th=[   76], 95.00th=[   79],
     | 99.00th=[   88], 99.50th=[   99], 99.90th=[  120], 99.95th=[  121],
     | 99.99th=[  121]
    bw (KB  /s): min=    0, max=   68, per=3.05%, avg=59.65, stdev= 8.50
    lat (msec) : 100=99.52%, 250=0.48%
  cpu          : usr=0.02%, sys=0.08%, ctx=22015, majf=0, minf=0
  IO depths    : 1=149.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14688/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19338: Sun Jun 12 14:55:39 2016
  mixed: io=54440KB, bw=1806.4KB/s, iops=451, runt= 30139msec
    clat (usec): min=447, max=864144, avg=70619.22, stdev=84460.89
     lat (usec): min=448, max=864144, avg=70619.70, stdev=84460.88
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   40], 60.00th=[   56],
     | 70.00th=[   79], 80.00th=[  115], 90.00th=[  178], 95.00th=[  243],
     | 99.00th=[  400], 99.50th=[  482], 99.90th=[  594], 99.95th=[  644],
     | 99.99th=[  734]
    bw (KB  /s): min=    0, max=  156, per=3.10%, avg=56.06, stdev=24.73
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.04%, 4=3.39%, 10=13.81%, 20=15.06%, 50=24.72%
    lat (msec) : 100=19.38%, 250=18.92%, 500=4.31%, 750=0.37%, 1000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=20161, majf=0, minf=0
  IO depths    : 1=147.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13610/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19373: Sun Jun 12 14:55:39 2016
  mixed: io=5098.0MB, bw=173977KB/s, iops=169, runt= 30006msec
    clat (usec): min=4330, max=17096, avg=5852.22, stdev=331.17
     lat (usec): min=4362, max=17129, avg=5883.05, stdev=331.13
    clat percentiles (usec):
     |  1.00th=[ 5472],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5536],
     | 30.00th=[ 5664], 40.00th=[ 5920], 50.00th=[ 5984], 60.00th=[ 5984],
     | 70.00th=[ 5984], 80.00th=[ 5984], 90.00th=[ 6048], 95.00th=[ 6112],
     | 99.00th=[ 6112], 99.50th=[ 8096], 99.90th=[ 8256], 99.95th=[ 9920],
     | 99.99th=[17024]
    bw (KB  /s): min=   68, max=176411, per=98.43%, avg=171246.72, stdev=22536.41
    lat (msec) : 10=99.98%, 20=0.02%
  cpu          : usr=0.97%, sys=2.27%, ctx=7643, majf=0, minf=0
  IO depths    : 1=149.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=5098/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19377: Sun Jun 12 14:55:39 2016
  mixed: io=5099.0MB, bw=174028KB/s, iops=169, runt= 30003msec
    clat (usec): min=4019, max=9894, avg=5881.73, stdev=292.92
     lat (usec): min=4020, max=9894, avg=5881.96, stdev=292.94
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5536],
     | 30.00th=[ 5664], 40.00th=[ 5984], 50.00th=[ 5984], 60.00th=[ 5984],
     | 70.00th=[ 5984], 80.00th=[ 5984], 90.00th=[ 6112], 95.00th=[ 6112],
     | 99.00th=[ 6112], 99.50th=[ 8160], 99.90th=[ 8256], 99.95th=[ 9920],
     | 99.99th=[ 9920]
    bw (KB  /s): min=   68, max=175426, per=98.43%, avg=171292.50, stdev=22528.72
    lat (msec) : 10=100.00%
  cpu          : usr=0.11%, sys=2.87%, ctx=7614, majf=0, minf=0
  IO depths    : 1=149.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=5099/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=57984KB, aggrb=1929KB/s, minb=1929KB/s, maxb=1929KB/s, mint=30056msec, maxt=30056msec

Run status group 1 (all jobs):
  MIXED: io=58752KB, aggrb=1956KB/s, minb=1956KB/s, maxb=1956KB/s, mint=30022msec, maxt=30022msec

Run status group 2 (all jobs):
  MIXED: io=54440KB, aggrb=1806KB/s, minb=1806KB/s, maxb=1806KB/s, mint=30139msec, maxt=30139msec

Run status group 3 (all jobs):
  MIXED: io=5098.0MB, aggrb=173976KB/s, minb=173976KB/s, maxb=173976KB/s, mint=30006msec, maxt=30006msec

Run status group 4 (all jobs):
  MIXED: io=5099.0MB, aggrb=174028KB/s, minb=174028KB/s, maxb=174028KB/s, mint=30003msec, maxt=30003msec

Disk stats (read/write):
  sdd: ios=50682/96310, merge=0/0, ticks=1604557/2998721, in_queue=4603168, util=99.30%
