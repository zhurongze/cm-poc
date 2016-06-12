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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19749: Sun Jun 12 14:29:03 2016
  mixed: io=50960KB, bw=1679.7KB/s, iops=419, runt= 30340msec
    clat (msec): min=52, max=345, avg=75.49, stdev=15.85
     lat (msec): min=52, max=345, avg=75.49, stdev=15.85
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   61], 20.00th=[   63],
     | 30.00th=[   67], 40.00th=[   70], 50.00th=[   72], 60.00th=[   76],
     | 70.00th=[   80], 80.00th=[   87], 90.00th=[   96], 95.00th=[  106],
     | 99.00th=[  129], 99.50th=[  135], 99.90th=[  165], 99.95th=[  165],
     | 99.99th=[  347]
    bw (KB  /s): min=    0, max=   63, per=3.08%, avg=51.63, stdev= 7.81
    lat (msec) : 100=92.68%, 250=7.28%, 500=0.03%
  cpu          : usr=0.02%, sys=0.12%, ctx=37429, majf=0, minf=20
  IO depths    : 1=146.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=12740/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19786: Sun Jun 12 14:29:03 2016
  mixed: io=55936KB, bw=1860.6KB/s, iops=465, runt= 30065msec
    clat (msec): min=52, max=110, avg=68.78, stdev= 8.85
     lat (msec): min=52, max=110, avg=68.78, stdev= 8.85
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   62],
     | 30.00th=[   63], 40.00th=[   66], 50.00th=[   68], 60.00th=[   70],
     | 70.00th=[   72], 80.00th=[   76], 90.00th=[   80], 95.00th=[   86],
     | 99.00th=[   99], 99.50th=[  105], 99.90th=[  110], 99.95th=[  110],
     | 99.99th=[  111]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=56.75, stdev= 8.06
    lat (msec) : 100=99.11%, 250=0.89%
  cpu          : usr=0.02%, sys=0.08%, ctx=20752, majf=0, minf=0
  IO depths    : 1=148.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13984/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19821: Sun Jun 12 14:29:03 2016
  mixed: io=54420KB, bw=1804.8KB/s, iops=451, runt= 30154msec
    clat (usec): min=352, max=1107.2K, avg=70695.25, stdev=84760.69
     lat (usec): min=353, max=1107.2K, avg=70695.77, stdev=84760.68
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   41], 60.00th=[   57],
     | 70.00th=[   78], 80.00th=[  112], 90.00th=[  176], 95.00th=[  245],
     | 99.00th=[  392], 99.50th=[  469], 99.90th=[  594], 99.95th=[  676],
     | 99.99th=[ 1004]
    bw (KB  /s): min=    0, max=  154, per=3.10%, avg=55.98, stdev=24.16
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.04%, 4=3.02%, 10=13.80%, 20=14.48%, 50=25.15%
    lat (msec) : 100=20.69%, 250=18.07%, 500=4.42%, 750=0.29%, 1000=0.01%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.01%, sys=0.07%, ctx=19813, majf=0, minf=0
  IO depths    : 1=145.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13605/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19875: Sun Jun 12 14:29:03 2016
  mixed: io=4789.0MB, bw=163437KB/s, iops=159, runt= 30005msec
    clat (usec): min=4350, max=19333, avg=6231.27, stdev=372.69
     lat (usec): min=4383, max=19365, avg=6262.10, stdev=372.68
    clat percentiles (usec):
     |  1.00th=[ 5728],  5.00th=[ 5728], 10.00th=[ 5856], 20.00th=[ 5984],
     | 30.00th=[ 6176], 40.00th=[ 6176], 50.00th=[ 6240], 60.00th=[ 6304],
     | 70.00th=[ 6368], 80.00th=[ 6432], 90.00th=[ 6496], 95.00th=[ 6624],
     | 99.00th=[ 6688], 99.50th=[ 8384], 99.90th=[10176], 99.95th=[10176],
     | 99.99th=[19328]
    bw (KB  /s): min=   68, max=169306, per=98.41%, avg=160835.47, stdev=21441.58
    lat (msec) : 10=99.90%, 20=0.10%
  cpu          : usr=0.98%, sys=2.24%, ctx=7171, majf=0, minf=0
  IO depths    : 1=149.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4789/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19880: Sun Jun 12 14:29:03 2016
  mixed: io=4790.0MB, bw=163482KB/s, iops=159, runt= 30003msec
    clat (usec): min=4034, max=10283, avg=6259.14, stdev=329.53
     lat (usec): min=4034, max=10283, avg=6259.59, stdev=329.56
    clat percentiles (usec):
     |  1.00th=[ 5728],  5.00th=[ 5792], 10.00th=[ 5856], 20.00th=[ 5984],
     | 30.00th=[ 6176], 40.00th=[ 6240], 50.00th=[ 6304], 60.00th=[ 6304],
     | 70.00th=[ 6368], 80.00th=[ 6496], 90.00th=[ 6496], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8384], 99.90th=[10048], 99.95th=[10176],
     | 99.99th=[10304]
    bw (KB  /s): min=   68, max=169306, per=98.41%, avg=160883.33, stdev=21441.71
    lat (msec) : 10=99.90%, 20=0.10%
  cpu          : usr=0.17%, sys=3.06%, ctx=7173, majf=0, minf=0
  IO depths    : 1=149.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4790/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=50960KB, aggrb=1679KB/s, minb=1679KB/s, maxb=1679KB/s, mint=30340msec, maxt=30340msec

Run status group 1 (all jobs):
  MIXED: io=55936KB, aggrb=1860KB/s, minb=1860KB/s, maxb=1860KB/s, mint=30065msec, maxt=30065msec

Run status group 2 (all jobs):
  MIXED: io=54420KB, aggrb=1804KB/s, minb=1804KB/s, maxb=1804KB/s, mint=30154msec, maxt=30154msec

Run status group 3 (all jobs):
  MIXED: io=4789.0MB, aggrb=163437KB/s, minb=163437KB/s, maxb=163437KB/s, mint=30005msec, maxt=30005msec

Run status group 4 (all jobs):
  MIXED: io=4790.0MB, aggrb=163482KB/s, minb=163482KB/s, maxb=163482KB/s, mint=30003msec, maxt=30003msec

Disk stats (read/write):
  sda: ios=49772/89140, merge=0/0, ticks=2061896/3167097, in_queue=5226734, util=99.29%
037, util=99.98%
