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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19670: Sun Jun 12 14:50:57 2016
  mixed: io=56192KB, bw=1870.8KB/s, iops=467, runt= 30038msec
    clat (msec): min=53, max=105, avg=68.38, stdev= 7.98
     lat (msec): min=53, max=105, avg=68.38, stdev= 7.98
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   62],
     | 30.00th=[   63], 40.00th=[   66], 50.00th=[   68], 60.00th=[   70],
     | 70.00th=[   72], 80.00th=[   75], 90.00th=[   79], 95.00th=[   84],
     | 99.00th=[   94], 99.50th=[   96], 99.90th=[  103], 99.95th=[  103],
     | 99.99th=[  105]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=57.04, stdev= 8.05
    lat (msec) : 100=99.67%, 250=0.33%
  cpu          : usr=0.02%, sys=0.12%, ctx=42431, majf=0, minf=11
  IO depths    : 1=150.8%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14048/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19706: Sun Jun 12 14:50:57 2016
  mixed: io=55680KB, bw=1848.6KB/s, iops=462, runt= 30121msec
    clat (msec): min=54, max=165, avg=69.00, stdev= 8.72
     lat (msec): min=54, max=165, avg=69.00, stdev= 8.72
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   62],
     | 30.00th=[   64], 40.00th=[   66], 50.00th=[   69], 60.00th=[   71],
     | 70.00th=[   73], 80.00th=[   76], 90.00th=[   80], 95.00th=[   84],
     | 99.00th=[   95], 99.50th=[  104], 99.90th=[  128], 99.95th=[  135],
     | 99.99th=[  135]
    bw (KB  /s): min=    0, max=   64, per=3.06%, avg=56.51, stdev= 8.16
    lat (msec) : 100=99.47%, 250=0.53%
  cpu          : usr=0.02%, sys=0.07%, ctx=20844, majf=0, minf=0
  IO depths    : 1=149.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13920/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19742: Sun Jun 12 14:50:57 2016
  mixed: io=53556KB, bw=1779.1KB/s, iops=444, runt= 30103msec
    clat (usec): min=446, max=1083.9K, avg=71785.99, stdev=86765.34
     lat (usec): min=447, max=1083.9K, avg=71786.41, stdev=86765.34
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   29], 50.00th=[   41], 60.00th=[   57],
     | 70.00th=[   80], 80.00th=[  116], 90.00th=[  180], 95.00th=[  243],
     | 99.00th=[  408], 99.50th=[  482], 99.90th=[  660], 99.95th=[  807],
     | 99.99th=[  889]
    bw (KB  /s): min=    0, max=  159, per=3.12%, avg=55.45, stdev=24.47
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.04%, 4=2.82%, 10=13.67%, 20=14.71%, 50=25.13%
    lat (msec) : 100=19.85%, 250=19.08%, 500=4.26%, 750=0.37%, 1000=0.06%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.05%, ctx=19986, majf=0, minf=0
  IO depths    : 1=149.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13389/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19777: Sun Jun 12 14:50:57 2016
  mixed: io=4826.0MB, bw=164706KB/s, iops=160, runt= 30004msec
    clat (msec): min=5, max=249, avg= 6.18, stdev= 3.94
     lat (msec): min=5, max=249, avg= 6.21, stdev= 3.94
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    6],
     | 30.00th=[    6], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   15], 99.95th=[   25],
     | 99.99th=[  251]
    bw (KB  /s): min=   68, max=175426, per=98.44%, avg=162140.38, stdev=25029.27
    lat (msec) : 10=99.79%, 20=0.15%, 50=0.02%, 250=0.04%
  cpu          : usr=0.91%, sys=2.36%, ctx=7265, majf=0, minf=0
  IO depths    : 1=150.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4826/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19781: Sun Jun 12 14:50:57 2016
  mixed: io=4894.0MB, bw=167026KB/s, iops=163, runt= 30004msec
    clat (usec): min=4013, max=14509, avg=6126.58, stdev=350.28
     lat (usec): min=4013, max=14510, avg=6127.00, stdev=350.32
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5664], 10.00th=[ 5728], 20.00th=[ 5920],
     | 30.00th=[ 5984], 40.00th=[ 6112], 50.00th=[ 6176], 60.00th=[ 6240],
     | 70.00th=[ 6240], 80.00th=[ 6368], 90.00th=[ 6368], 95.00th=[ 6432],
     | 99.00th=[ 6432], 99.50th=[ 8256], 99.90th=[10048], 99.95th=[10176],
     | 99.99th=[14528]
    bw (KB  /s): min=   68, max=175426, per=98.37%, avg=164308.33, stdev=21831.38
    lat (msec) : 10=99.88%, 20=0.12%
  cpu          : usr=0.17%, sys=2.95%, ctx=7339, majf=0, minf=0
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4894/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=56192KB, aggrb=1870KB/s, minb=1870KB/s, maxb=1870KB/s, mint=30038msec, maxt=30038msec

Run status group 1 (all jobs):
  MIXED: io=55680KB, aggrb=1848KB/s, minb=1848KB/s, maxb=1848KB/s, mint=30121msec, maxt=30121msec

Run status group 2 (all jobs):
  MIXED: io=53556KB, aggrb=1779KB/s, minb=1779KB/s, maxb=1779KB/s, mint=30103msec, maxt=30103msec

Run status group 3 (all jobs):
  MIXED: io=4826.0MB, aggrb=164705KB/s, minb=164705KB/s, maxb=164705KB/s, mint=30004msec, maxt=30004msec

Run status group 4 (all jobs):
  MIXED: io=4894.0MB, aggrb=167026KB/s, minb=167026KB/s, maxb=167026KB/s, mint=30004msec, maxt=30004msec

Disk stats (read/write):
  sdc: ios=49533/92241, merge=0/0, ticks=1604941/2991694, in_queue=4596513, util=99.24%
