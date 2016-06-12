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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=29597: Sun Jun 12 14:50:57 2016
  mixed: io=58240KB, bw=1938.9KB/s, iops=484, runt= 30039msec
    clat (msec): min=53, max=101, avg=65.99, stdev= 6.57
     lat (msec): min=53, max=101, avg=65.99, stdev= 6.57
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   66], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   71], 90.00th=[   76], 95.00th=[   79],
     | 99.00th=[   86], 99.50th=[   89], 99.90th=[   99], 99.95th=[  100],
     | 99.99th=[  101]
    bw (KB  /s): min=    0, max=   64, per=3.05%, avg=59.18, stdev= 8.14
    lat (msec) : 100=99.92%, 250=0.08%
  cpu          : usr=0.02%, sys=0.13%, ctx=43721, majf=0, minf=16
  IO depths    : 1=149.8%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14560/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=29632: Sun Jun 12 14:50:57 2016
  mixed: io=57728KB, bw=1923.3KB/s, iops=480, runt= 30016msec
    clat (msec): min=52, max=113, avg=66.54, stdev= 6.69
     lat (msec): min=52, max=113, avg=66.54, stdev= 6.69
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   63], 40.00th=[   64], 50.00th=[   66], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   76], 95.00th=[   79],
     | 99.00th=[   87], 99.50th=[   92], 99.90th=[   99], 99.95th=[  101],
     | 99.99th=[  113]
    bw (KB  /s): min=    0, max=   65, per=3.05%, avg=58.70, stdev= 8.13
    lat (msec) : 100=99.94%, 250=0.06%
  cpu          : usr=0.02%, sys=0.08%, ctx=21693, majf=0, minf=0
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14432/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=29668: Sun Jun 12 14:50:57 2016
  mixed: io=53772KB, bw=1785.1KB/s, iops=446, runt= 30108msec
    clat (usec): min=420, max=963648, avg=71491.98, stdev=89723.71
     lat (usec): min=421, max=963649, avg=71492.50, stdev=89723.73
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   18], 40.00th=[   27], 50.00th=[   39], 60.00th=[   55],
     | 70.00th=[   78], 80.00th=[  115], 90.00th=[  182], 95.00th=[  251],
     | 99.00th=[  420], 99.50th=[  494], 99.90th=[  742], 99.95th=[  824],
     | 99.99th=[  906]
    bw (KB  /s): min=    0, max=  152, per=3.13%, avg=55.81, stdev=25.13
    lat (usec) : 500=0.01%
    lat (msec) : 2=0.01%, 4=3.30%, 10=14.16%, 20=15.29%, 50=24.85%
    lat (msec) : 100=19.01%, 250=18.32%, 500=4.57%, 750=0.37%, 1000=0.10%
  cpu          : usr=0.02%, sys=0.06%, ctx=19931, majf=0, minf=0
  IO depths    : 1=148.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13443/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=29720: Sun Jun 12 14:50:57 2016
  mixed: io=4732.0MB, bw=161514KB/s, iops=157, runt= 30001msec
    clat (msec): min=5, max=249, avg= 6.30, stdev= 3.57
     lat (msec): min=5, max=249, avg= 6.34, stdev= 3.57
    clat percentiles (msec):
     |  1.00th=[    6],  5.00th=[    6], 10.00th=[    6], 20.00th=[    7],
     | 30.00th=[    7], 40.00th=[    7], 50.00th=[    7], 60.00th=[    7],
     | 70.00th=[    7], 80.00th=[    7], 90.00th=[    7], 95.00th=[    7],
     | 99.00th=[    7], 99.50th=[    9], 99.90th=[   11], 99.95th=[   17],
     | 99.99th=[  251]
    bw (KB  /s): min=   68, max=171005, per=98.69%, avg=159402.53, stdev=22785.48
    lat (msec) : 10=99.83%, 20=0.13%, 50=0.02%, 250=0.02%
  cpu          : usr=0.98%, sys=2.38%, ctx=7110, majf=0, minf=266
  IO depths    : 1=150.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4732/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=29729: Sun Jun 12 14:50:57 2016
  mixed: io=4778.0MB, bw=163067KB/s, iops=159, runt= 30004msec
    clat (usec): min=4017, max=14461, avg=6274.85, stdev=375.48
     lat (usec): min=4018, max=14462, avg=6275.32, stdev=375.49
    clat percentiles (usec):
     |  1.00th=[ 5664],  5.00th=[ 5728], 10.00th=[ 5856], 20.00th=[ 6048],
     | 30.00th=[ 6176], 40.00th=[ 6176], 50.00th=[ 6304], 60.00th=[ 6368],
     | 70.00th=[ 6432], 80.00th=[ 6496], 90.00th=[ 6624], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[10304], 99.95th=[10304],
     | 99.99th=[14400]
    bw (KB  /s): min=   68, max=171005, per=98.38%, avg=160429.50, stdev=21483.02
    lat (msec) : 10=99.87%, 20=0.13%
  cpu          : usr=0.16%, sys=2.96%, ctx=7166, majf=0, minf=0
  IO depths    : 1=149.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4778/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=58240KB, aggrb=1938KB/s, minb=1938KB/s, maxb=1938KB/s, mint=30039msec, maxt=30039msec

Run status group 1 (all jobs):
  MIXED: io=57728KB, aggrb=1923KB/s, minb=1923KB/s, maxb=1923KB/s, mint=30016msec, maxt=30016msec

Run status group 2 (all jobs):
  MIXED: io=53772KB, aggrb=1785KB/s, minb=1785KB/s, maxb=1785KB/s, mint=30108msec, maxt=30108msec

Run status group 3 (all jobs):
  MIXED: io=4732.0MB, aggrb=161513KB/s, minb=161513KB/s, maxb=161513KB/s, mint=30001msec, maxt=30001msec

Run status group 4 (all jobs):
  MIXED: io=4778.0MB, aggrb=163067KB/s, minb=163067KB/s, maxb=163067KB/s, mint=30004msec, maxt=30004msec

Disk stats (read/write):
  sdc: ios=48669/93710, merge=0/0, ticks=1603743/2990901, in_queue=4594526, util=99.19%
