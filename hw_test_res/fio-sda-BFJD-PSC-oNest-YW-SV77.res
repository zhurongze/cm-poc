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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19097: Sun Jun 12 14:29:04 2016
  mixed: io=51796KB, bw=1716.7KB/s, iops=429, runt= 30183msec
    clat (msec): min=52, max=185, avg=74.40, stdev=13.46
     lat (msec): min=52, max=185, avg=74.40, stdev=13.46
    clat percentiles (msec):
     |  1.00th=[   58],  5.00th=[   60], 10.00th=[   62], 20.00th=[   63],
     | 30.00th=[   66], 40.00th=[   70], 50.00th=[   72], 60.00th=[   75],
     | 70.00th=[   79], 80.00th=[   85], 90.00th=[   93], 95.00th=[  102],
     | 99.00th=[  115], 99.50th=[  120], 99.90th=[  174], 99.95th=[  176],
     | 99.99th=[  186]
    bw (KB  /s): min=    0, max=   60, per=3.05%, avg=52.36, stdev= 7.57
    lat (msec) : 100=94.12%, 250=5.88%
  cpu          : usr=0.02%, sys=0.13%, ctx=37778, majf=0, minf=10
  IO depths    : 1=145.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=12949/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19135: Sun Jun 12 14:29:04 2016
  mixed: io=57216KB, bw=1876.1KB/s, iops=469, runt= 30484msec
    clat (msec): min=53, max=502, avg=67.28, stdev=11.13
     lat (msec): min=53, max=502, avg=67.28, stdev=11.13
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   65], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   73], 90.00th=[   79], 95.00th=[   86],
     | 99.00th=[  101], 99.50th=[  110], 99.90th=[  116], 99.95th=[  117],
     | 99.99th=[  502]
    bw (KB  /s): min=    0, max=   66, per=3.09%, avg=57.97, stdev= 8.41
    lat (msec) : 100=98.77%, 250=1.21%, 500=0.01%, 750=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=21368, majf=0, minf=0
  IO depths    : 1=149.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14304/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19171: Sun Jun 12 14:29:04 2016
  mixed: io=52856KB, bw=1754.4KB/s, iops=438, runt= 30134msec
    clat (msec): min=1, max=1356, avg=72.76, stdev=86.86
     lat (msec): min=1, max=1356, avg=72.76, stdev=86.86
    clat percentiles (msec):
     |  1.00th=[    4],  5.00th=[    6], 10.00th=[    9], 20.00th=[   14],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   42], 60.00th=[   58],
     | 70.00th=[   81], 80.00th=[  117], 90.00th=[  178], 95.00th=[  249],
     | 99.00th=[  408], 99.50th=[  474], 99.90th=[  660], 99.95th=[  791],
     | 99.99th=[  979]
    bw (KB  /s): min=    0, max=  179, per=3.10%, avg=54.38, stdev=24.37
    lat (msec) : 2=0.02%, 4=1.40%, 10=12.31%, 20=16.47%, 50=25.69%
    lat (msec) : 100=20.09%, 250=19.05%, 500=4.56%, 750=0.35%, 1000=0.05%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.07%, ctx=19316, majf=0, minf=0
  IO depths    : 1=145.9%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13214/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19205: Sun Jun 12 14:29:04 2016
  mixed: io=4710.0MB, bw=160747KB/s, iops=156, runt= 30004msec
    clat (usec): min=4328, max=19652, avg=6335.10, stdev=448.90
     lat (usec): min=4360, max=19682, avg=6366.17, stdev=448.76
    clat percentiles (usec):
     |  1.00th=[ 5728],  5.00th=[ 5728], 10.00th=[ 5792], 20.00th=[ 6112],
     | 30.00th=[ 6176], 40.00th=[ 6176], 50.00th=[ 6240], 60.00th=[ 6432],
     | 70.00th=[ 6560], 80.00th=[ 6624], 90.00th=[ 6688], 95.00th=[ 6752],
     | 99.00th=[ 6752], 99.50th=[ 8512], 99.90th=[10432], 99.95th=[14912],
     | 99.99th=[19584]
    bw (KB  /s): min=   68, max=169306, per=98.45%, avg=158248.15, stdev=21340.49
    lat (msec) : 10=99.85%, 20=0.15%
  cpu          : usr=0.91%, sys=2.37%, ctx=7068, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4710/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19209: Sun Jun 12 14:29:04 2016
  mixed: io=4714.0MB, bw=160883KB/s, iops=157, runt= 30004msec
    clat (usec): min=4020, max=11106, avg=6360.28, stdev=372.75
     lat (usec): min=4020, max=11106, avg=6360.75, stdev=372.75
    clat percentiles (usec):
     |  1.00th=[ 5728],  5.00th=[ 5792], 10.00th=[ 5792], 20.00th=[ 6176],
     | 30.00th=[ 6176], 40.00th=[ 6240], 50.00th=[ 6240], 60.00th=[ 6496],
     | 70.00th=[ 6560], 80.00th=[ 6624], 90.00th=[ 6688], 95.00th=[ 6752],
     | 99.00th=[ 6816], 99.50th=[ 8512], 99.90th=[10432], 99.95th=[10560],
     | 99.99th=[11072]
    bw (KB  /s): min=   68, max=169306, per=98.45%, avg=158389.17, stdev=21336.10
    lat (msec) : 10=99.89%, 20=0.11%
  cpu          : usr=0.18%, sys=2.99%, ctx=7071, majf=0, minf=0
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4714/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=51796KB, aggrb=1716KB/s, minb=1716KB/s, maxb=1716KB/s, mint=30183msec, maxt=30183msec

Run status group 1 (all jobs):
  MIXED: io=57216KB, aggrb=1876KB/s, minb=1876KB/s, maxb=1876KB/s, mint=30484msec, maxt=30484msec

Run status group 2 (all jobs):
  MIXED: io=52856KB, aggrb=1754KB/s, minb=1754KB/s, maxb=1754KB/s, mint=30134msec, maxt=30134msec

Run status group 3 (all jobs):
  MIXED: io=4710.0MB, aggrb=160746KB/s, minb=160746KB/s, maxb=160746KB/s, mint=30004msec, maxt=30004msec

Run status group 4 (all jobs):
  MIXED: io=4714.0MB, aggrb=160883KB/s, minb=160883KB/s, maxb=160883KB/s, mint=30004msec, maxt=30004msec

Disk stats (read/write):
  sda: ios=48872/89812, merge=0/0, ticks=2039462/3160292, in_queue=5197817, util=99.35%
 (read/write):
  sda: ios=18958/127416, merge=0/0, ticks=1969338/5898696, in_queue=7873994, util=99.94%
