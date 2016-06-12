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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19757: Sun Jun 12 14:50:58 2016
  mixed: io=55680KB, bw=1853.6KB/s, iops=463, runt= 30040msec
    clat (msec): min=53, max=108, avg=69.03, stdev= 8.33
     lat (msec): min=53, max=108, avg=69.03, stdev= 8.33
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   62],
     | 30.00th=[   64], 40.00th=[   67], 50.00th=[   69], 60.00th=[   71],
     | 70.00th=[   73], 80.00th=[   77], 90.00th=[   81], 95.00th=[   85],
     | 99.00th=[   93], 99.50th=[   95], 99.90th=[  101], 99.95th=[  109],
     | 99.99th=[  110]
    bw (KB  /s): min=    0, max=   63, per=3.05%, avg=56.52, stdev= 7.98
    lat (msec) : 100=99.86%, 250=0.14%
  cpu          : usr=0.02%, sys=0.12%, ctx=42172, majf=0, minf=9
  IO depths    : 1=151.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13920/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19793: Sun Jun 12 14:50:58 2016
  mixed: io=57472KB, bw=1907.7KB/s, iops=476, runt= 30128msec
    clat (msec): min=51, max=152, avg=66.91, stdev= 7.61
     lat (msec): min=51, max=152, avg=66.91, stdev= 7.61
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   64], 50.00th=[   67], 60.00th=[   69],
     | 70.00th=[   70], 80.00th=[   73], 90.00th=[   78], 95.00th=[   81],
     | 99.00th=[   90], 99.50th=[   95], 99.90th=[  101], 99.95th=[  102],
     | 99.99th=[  108]
    bw (KB  /s): min=    0, max=   65, per=3.06%, avg=58.32, stdev= 8.22
    lat (msec) : 100=99.81%, 250=0.19%
  cpu          : usr=0.01%, sys=0.06%, ctx=21377, majf=0, minf=0
  IO depths    : 1=148.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14368/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19829: Sun Jun 12 14:50:58 2016
  mixed: io=53852KB, bw=1787.5KB/s, iops=446, runt= 30128msec
    clat (usec): min=352, max=1135.6K, avg=71407.45, stdev=86873.11
     lat (usec): min=353, max=1135.6K, avg=71407.84, stdev=86873.11
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    8], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   40], 60.00th=[   57],
     | 70.00th=[   79], 80.00th=[  114], 90.00th=[  178], 95.00th=[  249],
     | 99.00th=[  412], 99.50th=[  478], 99.90th=[  668], 99.95th=[  717],
     | 99.99th=[  824]
    bw (KB  /s): min=    0, max=  230, per=3.10%, avg=55.44, stdev=24.43
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.07%, 4=3.26%, 10=13.27%, 20=15.64%, 50=24.33%
    lat (msec) : 100=20.22%, 250=18.21%, 500=4.58%, 750=0.37%, 1000=0.02%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.01%, sys=0.05%, ctx=19830, majf=0, minf=0
  IO depths    : 1=147.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13463/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19863: Sun Jun 12 14:50:58 2016
  mixed: io=4630.0MB, bw=156757KB/s, iops=153, runt= 30245msec
    clat (msec): min=5, max=249, avg= 6.50, stdev= 4.96
     lat (msec): min=5, max=250, avg= 6.53, stdev= 4.96
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    6],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[   15], 99.50th=[   15], 99.90th=[   15], 99.95th=[   16],
     | 99.99th=[  251]
    bw (KB  /s): min=   68, max=166934, per=98.59%, avg=154548.03, stdev=27236.38
    lat (msec) : 10=98.19%, 20=1.77%, 250=0.04%
  cpu          : usr=0.93%, sys=2.30%, ctx=6969, majf=0, minf=0
  IO depths    : 1=150.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4630/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19867: Sun Jun 12 14:50:58 2016
  mixed: io=4762.0MB, bw=162510KB/s, iops=158, runt= 30006msec
    clat (usec): min=4020, max=15016, avg=6296.41, stdev=352.30
     lat (usec): min=4020, max=15017, avg=6296.89, stdev=352.31
    clat percentiles (usec):
     |  1.00th=[ 5792],  5.00th=[ 5856], 10.00th=[ 5856], 20.00th=[ 5984],
     | 30.00th=[ 6240], 40.00th=[ 6304], 50.00th=[ 6304], 60.00th=[ 6304],
     | 70.00th=[ 6368], 80.00th=[ 6560], 90.00th=[ 6688], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[10176], 99.95th=[10432],
     | 99.99th=[15040]
    bw (KB  /s): min=   68, max=166934, per=98.45%, avg=159996.35, stdev=21348.57
    lat (msec) : 10=99.90%, 20=0.10%
  cpu          : usr=0.12%, sys=3.02%, ctx=7151, majf=0, minf=0
  IO depths    : 1=150.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4762/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=55680KB, aggrb=1853KB/s, minb=1853KB/s, maxb=1853KB/s, mint=30040msec, maxt=30040msec

Run status group 1 (all jobs):
  MIXED: io=57472KB, aggrb=1907KB/s, minb=1907KB/s, maxb=1907KB/s, mint=30128msec, maxt=30128msec

Run status group 2 (all jobs):
  MIXED: io=53852KB, aggrb=1787KB/s, minb=1787KB/s, maxb=1787KB/s, mint=30128msec, maxt=30128msec

Run status group 3 (all jobs):
  MIXED: io=4630.0MB, aggrb=156757KB/s, minb=156757KB/s, maxb=156757KB/s, mint=30245msec, maxt=30245msec

Run status group 4 (all jobs):
  MIXED: io=4762.0MB, aggrb=162510KB/s, minb=162510KB/s, maxb=162510KB/s, mint=30006msec, maxt=30006msec

Disk stats (read/write):
  sdc: ios=48676/91331, merge=0/0, ticks=1605094/2993941, in_queue=4598933, util=99.19%
