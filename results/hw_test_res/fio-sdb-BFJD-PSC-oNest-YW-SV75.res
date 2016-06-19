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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19108: Sun Jun 12 14:50:57 2016
  mixed: io=57216KB, bw=1904.9KB/s, iops=476, runt= 30038msec
    clat (msec): min=52, max=103, avg=67.18, stdev= 7.90
     lat (msec): min=52, max=103, avg=67.18, stdev= 7.90
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   64], 50.00th=[   67], 60.00th=[   69],
     | 70.00th=[   71], 80.00th=[   74], 90.00th=[   78], 95.00th=[   83],
     | 99.00th=[   92], 99.50th=[   94], 99.90th=[  101], 99.95th=[  101],
     | 99.99th=[  103]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=58.10, stdev= 8.19
    lat (msec) : 100=99.86%, 250=0.14%
  cpu          : usr=0.02%, sys=0.14%, ctx=43017, majf=0, minf=6
  IO depths    : 1=150.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14304/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19143: Sun Jun 12 14:50:57 2016
  mixed: io=57728KB, bw=1922.6KB/s, iops=480, runt= 30027msec
    clat (msec): min=53, max=101, avg=66.55, stdev= 7.51
     lat (msec): min=53, max=101, avg=66.55, stdev= 7.51
    clat percentiles (msec):
     |  1.00th=[   56],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   66], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   73], 90.00th=[   78], 95.00th=[   81],
     | 99.00th=[   91], 99.50th=[   96], 99.90th=[  100], 99.95th=[  101],
     | 99.99th=[  101]
    bw (KB  /s): min=    0, max=   66, per=3.05%, avg=58.67, stdev= 8.17
    lat (msec) : 100=99.91%, 250=0.09%
  cpu          : usr=0.02%, sys=0.07%, ctx=21716, majf=0, minf=0
  IO depths    : 1=150.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14432/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19179: Sun Jun 12 14:50:57 2016
  mixed: io=52484KB, bw=1742.7KB/s, iops=435, runt= 30118msec
    clat (msec): min=1, max=885, avg=73.27, stdev=85.28
     lat (msec): min=1, max=885, avg=73.27, stdev=85.28
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   29], 50.00th=[   42], 60.00th=[   60],
     | 70.00th=[   85], 80.00th=[  121], 90.00th=[  184], 95.00th=[  243],
     | 99.00th=[  396], 99.50th=[  461], 99.90th=[  594], 99.95th=[  644],
     | 99.99th=[  807]
    bw (KB  /s): min=    0, max=  163, per=3.11%, avg=54.13, stdev=23.87
    lat (msec) : 2=0.07%, 4=3.40%, 10=12.93%, 20=15.14%, 50=23.41%
    lat (msec) : 100=19.92%, 250=20.44%, 500=4.34%, 750=0.33%, 1000=0.02%
  cpu          : usr=0.02%, sys=0.06%, ctx=19608, majf=0, minf=0
  IO depths    : 1=149.4%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13121/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19213: Sun Jun 12 14:50:57 2016
  mixed: io=4942.0MB, bw=168659KB/s, iops=164, runt= 30005msec
    clat (msec): min=5, max=202, avg= 6.04, stdev= 2.88
     lat (msec): min=5, max=202, avg= 6.07, stdev= 2.88
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    6],
     | 30.00th=[    6], 40.00th=[    6], 50.00th=[    6], 60.00th=[    6],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   15], 99.95th=[   15],
     | 99.99th=[  202]
    bw (KB  /s): min=   68, max=175426, per=98.42%, avg=165998.82, stdev=24243.82
    lat (msec) : 10=99.55%, 20=0.40%, 50=0.02%, 250=0.02%
  cpu          : usr=0.84%, sys=2.39%, ctx=7428, majf=0, minf=0
  IO depths    : 1=150.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4942/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19217: Sun Jun 12 14:50:57 2016
  mixed: io=4998.0MB, bw=170593KB/s, iops=166, runt= 30001msec
    clat (usec): min=5519, max=14525, avg=5999.62, stdev=386.24
     lat (usec): min=5519, max=14525, avg=5999.92, stdev=386.31
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5536], 10.00th=[ 5536], 20.00th=[ 5728],
     | 30.00th=[ 5984], 40.00th=[ 5984], 50.00th=[ 5984], 60.00th=[ 5984],
     | 70.00th=[ 6176], 80.00th=[ 6176], 90.00th=[ 6240], 95.00th=[ 6624],
     | 99.00th=[ 6624], 99.50th=[ 8160], 99.90th=[10048], 99.95th=[10176],
     | 99.99th=[14528]
    bw (KB  /s): min=   68, max=175426, per=98.41%, avg=167877.88, stdev=22648.23
    lat (msec) : 10=99.88%, 20=0.12%
  cpu          : usr=0.11%, sys=2.91%, ctx=7498, majf=0, minf=0
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4998/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=57216KB, aggrb=1904KB/s, minb=1904KB/s, maxb=1904KB/s, mint=30038msec, maxt=30038msec

Run status group 1 (all jobs):
  MIXED: io=57728KB, aggrb=1922KB/s, minb=1922KB/s, maxb=1922KB/s, mint=30027msec, maxt=30027msec

Run status group 2 (all jobs):
  MIXED: io=52484KB, aggrb=1742KB/s, minb=1742KB/s, maxb=1742KB/s, mint=30118msec, maxt=30118msec

Run status group 3 (all jobs):
  MIXED: io=4942.0MB, aggrb=168658KB/s, minb=168658KB/s, maxb=168658KB/s, mint=30005msec, maxt=30005msec

Run status group 4 (all jobs):
  MIXED: io=4998.0MB, aggrb=170592KB/s, minb=170592KB/s, maxb=170592KB/s, mint=30001msec, maxt=30001msec

Disk stats (read/write):
  sdc: ios=49711/94372, merge=0/0, ticks=1604290/3042255, in_queue=4646432, util=99.21%
