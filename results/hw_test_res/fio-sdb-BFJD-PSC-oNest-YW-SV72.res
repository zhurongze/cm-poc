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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=20105: Sun Jun 12 14:50:57 2016
  mixed: io=58112KB, bw=1934.4KB/s, iops=483, runt= 30043msec
    clat (msec): min=53, max=104, avg=66.16, stdev= 6.90
     lat (msec): min=53, max=104, avg=66.16, stdev= 6.90
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   65], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   77], 95.00th=[   80],
     | 99.00th=[   86], 99.50th=[   92], 99.90th=[  101], 99.95th=[  103],
     | 99.99th=[  104]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=58.99, stdev= 8.15
    lat (msec) : 100=99.86%, 250=0.14%
  cpu          : usr=0.02%, sys=0.14%, ctx=43930, majf=0, minf=23
  IO depths    : 1=151.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14528/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=20140: Sun Jun 12 14:50:57 2016
  mixed: io=57856KB, bw=1925.8KB/s, iops=481, runt= 30044msec
    clat (msec): min=51, max=106, avg=66.44, stdev= 7.45
     lat (msec): min=51, max=106, avg=66.44, stdev= 7.45
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   66], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   77], 95.00th=[   82],
     | 99.00th=[   90], 99.50th=[   94], 99.90th=[  102], 99.95th=[  105],
     | 99.99th=[  106]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=58.75, stdev= 8.13
    lat (msec) : 100=99.88%, 250=0.12%
  cpu          : usr=0.02%, sys=0.08%, ctx=21638, majf=0, minf=0
  IO depths    : 1=149.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14464/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=20176: Sun Jun 12 14:50:57 2016
  mixed: io=53700KB, bw=1783.2KB/s, iops=445, runt= 30116msec
    clat (usec): min=144, max=1455.8K, avg=71590.37, stdev=86159.34
     lat (usec): min=144, max=1455.8K, avg=71590.91, stdev=86159.33
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   41], 60.00th=[   58],
     | 70.00th=[   81], 80.00th=[  116], 90.00th=[  178], 95.00th=[  245],
     | 99.00th=[  392], 99.50th=[  469], 99.90th=[  644], 99.95th=[  676],
     | 99.99th=[  799]
    bw (KB  /s): min=    0, max=  184, per=3.11%, avg=55.39, stdev=24.17
    lat (usec) : 250=0.01%, 500=0.01%
    lat (msec) : 2=0.08%, 4=3.08%, 10=13.50%, 20=15.15%, 50=24.26%
    lat (msec) : 100=20.06%, 250=19.02%, 500=4.42%, 750=0.39%, 1000=0.01%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19911, majf=0, minf=0
  IO depths    : 1=148.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13425/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=20210: Sun Jun 12 14:50:57 2016
  mixed: io=4718.0MB, bw=161009KB/s, iops=157, runt= 30006msec
    clat (msec): min=4, max=153, avg= 6.32, stdev= 2.25
     lat (msec): min=4, max=153, avg= 6.36, stdev= 2.25
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    6],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   16], 99.95th=[   19],
     | 99.99th=[  155]
    bw (KB  /s): min=   68, max=171688, per=98.52%, avg=158625.25, stdev=22299.37
    lat (msec) : 10=99.58%, 20=0.38%, 50=0.02%, 250=0.02%
  cpu          : usr=1.03%, sys=2.39%, ctx=7102, majf=0, minf=266
  IO depths    : 1=150.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4718/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=20214: Sun Jun 12 14:50:57 2016
  mixed: io=4762.0MB, bw=162532KB/s, iops=158, runt= 30002msec
    clat (usec): min=4047, max=14602, avg=6295.17, stdev=407.16
     lat (usec): min=4047, max=14603, avg=6295.69, stdev=407.14
    clat percentiles (usec):
     |  1.00th=[ 5664],  5.00th=[ 5792], 10.00th=[ 5856], 20.00th=[ 5984],
     | 30.00th=[ 6240], 40.00th=[ 6240], 50.00th=[ 6240], 60.00th=[ 6368],
     | 70.00th=[ 6368], 80.00th=[ 6688], 90.00th=[ 6752], 95.00th=[ 6752],
     | 99.00th=[ 6816], 99.50th=[ 8384], 99.90th=[10560], 99.95th=[11968],
     | 99.99th=[14656]
    bw (KB  /s): min=   68, max=171688, per=98.40%, avg=159935.03, stdev=21680.07
    lat (msec) : 10=99.85%, 20=0.15%
  cpu          : usr=0.19%, sys=3.13%, ctx=7154, majf=0, minf=0
  IO depths    : 1=150.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4762/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=58112KB, aggrb=1934KB/s, minb=1934KB/s, maxb=1934KB/s, mint=30043msec, maxt=30043msec

Run status group 1 (all jobs):
  MIXED: io=57856KB, aggrb=1925KB/s, minb=1925KB/s, maxb=1925KB/s, mint=30044msec, maxt=30044msec

Run status group 2 (all jobs):
  MIXED: io=53700KB, aggrb=1783KB/s, minb=1783KB/s, maxb=1783KB/s, mint=30116msec, maxt=30116msec

Run status group 3 (all jobs):
  MIXED: io=4718.0MB, aggrb=161008KB/s, minb=161008KB/s, maxb=161008KB/s, mint=30006msec, maxt=30006msec

Run status group 4 (all jobs):
  MIXED: io=4762.0MB, aggrb=162532KB/s, minb=162532KB/s, maxb=162532KB/s, mint=30002msec, maxt=30002msec

Disk stats (read/write):
  sdc: ios=48722/93879, merge=0/0, ticks=1604224/3004053, in_queue=4608165, util=99.20%
