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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19918: Sun Jun 12 14:55:40 2016
  mixed: io=56960KB, bw=1898.3KB/s, iops=474, runt= 30007msec
    clat (msec): min=52, max=103, avg=67.42, stdev= 7.58
     lat (msec): min=52, max=103, avg=67.42, stdev= 7.58
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   63], 40.00th=[   65], 50.00th=[   67], 60.00th=[   69],
     | 70.00th=[   71], 80.00th=[   74], 90.00th=[   78], 95.00th=[   83],
     | 99.00th=[   93], 99.50th=[   96], 99.90th=[   99], 99.95th=[  100],
     | 99.99th=[  103]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=57.90, stdev= 8.12
    lat (msec) : 100=99.94%, 250=0.06%
  cpu          : usr=0.02%, sys=0.14%, ctx=43058, majf=0, minf=11
  IO depths    : 1=150.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14240/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19955: Sun Jun 12 14:55:40 2016
  mixed: io=56576KB, bw=1882.2KB/s, iops=470, runt= 30059msec
    clat (msec): min=53, max=116, avg=67.98, stdev= 7.85
     lat (msec): min=53, max=116, avg=67.98, stdev= 7.85
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   63], 40.00th=[   65], 50.00th=[   68], 60.00th=[   70],
     | 70.00th=[   71], 80.00th=[   75], 90.00th=[   79], 95.00th=[   84],
     | 99.00th=[   93], 99.50th=[   95], 99.90th=[  105], 99.95th=[  105],
     | 99.99th=[  108]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=57.43, stdev= 8.21
    lat (msec) : 100=99.76%, 250=0.24%
  cpu          : usr=0.01%, sys=0.07%, ctx=21345, majf=0, minf=0
  IO depths    : 1=150.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14144/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19989: Sun Jun 12 14:55:40 2016
  mixed: io=53428KB, bw=1772.8KB/s, iops=443, runt= 30139msec
    clat (usec): min=144, max=986450, avg=71961.02, stdev=87506.24
     lat (usec): min=144, max=986451, avg=71961.41, stdev=87506.24
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   28], 50.00th=[   40], 60.00th=[   56],
     | 70.00th=[   80], 80.00th=[  117], 90.00th=[  182], 95.00th=[  249],
     | 99.00th=[  412], 99.50th=[  482], 99.90th=[  660], 99.95th=[  766],
     | 99.99th=[  930]
    bw (KB  /s): min=    0, max=  167, per=3.11%, avg=55.12, stdev=24.45
    lat (usec) : 250=0.01%
    lat (msec) : 2=0.06%, 4=3.21%, 10=13.50%, 20=15.06%, 50=25.16%
    lat (msec) : 100=19.45%, 250=18.61%, 500=4.54%, 750=0.35%, 1000=0.06%
  cpu          : usr=0.01%, sys=0.05%, ctx=19837, majf=0, minf=0
  IO depths    : 1=148.3%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13357/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=20022: Sun Jun 12 14:55:40 2016
  mixed: io=4764.0MB, bw=162579KB/s, iops=158, runt= 30006msec
    clat (usec): min=4374, max=18201, avg=6264.13, stdev=501.33
     lat (usec): min=4406, max=18234, avg=6294.99, stdev=501.49
    clat percentiles (usec):
     |  1.00th=[ 5600],  5.00th=[ 5664], 10.00th=[ 5792], 20.00th=[ 6048],
     | 30.00th=[ 6048], 40.00th=[ 6112], 50.00th=[ 6240], 60.00th=[ 6304],
     | 70.00th=[ 6496], 80.00th=[ 6560], 90.00th=[ 6560], 95.00th=[ 6624],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[14912], 99.95th=[14912],
     | 99.99th=[18304]
    bw (KB  /s): min=   68, max=173386, per=98.48%, avg=160107.58, stdev=21712.98
    lat (msec) : 10=99.77%, 20=0.23%
  cpu          : usr=0.96%, sys=2.32%, ctx=7151, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4764/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=20027: Sun Jun 12 14:55:40 2016
  mixed: io=4740.0MB, bw=161754KB/s, iops=157, runt= 30007msec
    clat (msec): min=4, max=197, avg= 6.33, stdev= 2.82
     lat (msec): min=4, max=197, avg= 6.33, stdev= 2.82
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    7],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   11], 99.95th=[   16],
     | 99.99th=[  198]
    bw (KB  /s): min=   68, max=173386, per=98.47%, avg=159274.03, stdev=23156.96
    lat (msec) : 10=99.85%, 20=0.11%, 50=0.02%, 250=0.02%
  cpu          : usr=0.18%, sys=3.06%, ctx=7141, majf=0, minf=0
  IO depths    : 1=150.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4740/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=56960KB, aggrb=1898KB/s, minb=1898KB/s, maxb=1898KB/s, mint=30007msec, maxt=30007msec

Run status group 1 (all jobs):
  MIXED: io=56576KB, aggrb=1882KB/s, minb=1882KB/s, maxb=1882KB/s, mint=30059msec, maxt=30059msec

Run status group 2 (all jobs):
  MIXED: io=53428KB, aggrb=1772KB/s, minb=1772KB/s, maxb=1772KB/s, mint=30139msec, maxt=30139msec

Run status group 3 (all jobs):
  MIXED: io=4764.0MB, aggrb=162578KB/s, minb=162578KB/s, maxb=162578KB/s, mint=30006msec, maxt=30006msec

Run status group 4 (all jobs):
  MIXED: io=4740.0MB, aggrb=161754KB/s, minb=161754KB/s, maxb=161754KB/s, mint=30007msec, maxt=30007msec

Disk stats (read/write):
  sdd: ios=48529/92895, merge=0/0, ticks=1605435/3026774, in_queue=4632093, util=99.25%
