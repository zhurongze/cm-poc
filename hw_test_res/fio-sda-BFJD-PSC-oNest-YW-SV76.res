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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19426: Sun Jun 12 14:29:03 2016
  mixed: io=51720KB, bw=1713.9KB/s, iops=428, runt= 30178msec
    clat (msec): min=50, max=199, avg=74.31, stdev=13.71
     lat (msec): min=50, max=199, avg=74.32, stdev=13.71
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   60], 10.00th=[   61], 20.00th=[   63],
     | 30.00th=[   67], 40.00th=[   69], 50.00th=[   71], 60.00th=[   75],
     | 70.00th=[   79], 80.00th=[   84], 90.00th=[   95], 95.00th=[  101],
     | 99.00th=[  120], 99.50th=[  127], 99.90th=[  141], 99.95th=[  143],
     | 99.99th=[  194]
    bw (KB  /s): min=    0, max=   60, per=3.06%, avg=52.42, stdev= 7.54
    lat (msec) : 100=94.40%, 250=5.60%
  cpu          : usr=0.02%, sys=0.14%, ctx=37787, majf=0, minf=13
  IO depths    : 1=145.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=12930/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19463: Sun Jun 12 14:29:03 2016
  mixed: io=56560KB, bw=1860.6KB/s, iops=465, runt= 30400msec
    clat (msec): min=52, max=407, avg=68.36, stdev=14.19
     lat (msec): min=52, max=407, avg=68.36, stdev=14.19
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   58], 10.00th=[   59], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   65], 50.00th=[   68], 60.00th=[   69],
     | 70.00th=[   71], 80.00th=[   75], 90.00th=[   80], 95.00th=[   86],
     | 99.00th=[  104], 99.50th=[  110], 99.90th=[  375], 99.95th=[  392],
     | 99.99th=[  404]
    bw (KB  /s): min=    0, max=   65, per=3.08%, avg=57.27, stdev= 8.33
    lat (msec) : 100=98.76%, 250=1.12%, 500=0.11%
  cpu          : usr=0.01%, sys=0.06%, ctx=20750, majf=0, minf=0
  IO depths    : 1=146.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14140/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19497: Sun Jun 12 14:29:03 2016
  mixed: io=53920KB, bw=1789.8KB/s, iops=447, runt= 30127msec
    clat (msec): min=1, max=1152, avg=71.33, stdev=84.31
     lat (msec): min=1, max=1152, avg=71.33, stdev=84.31
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    7], 20.00th=[   12],
     | 30.00th=[   19], 40.00th=[   29], 50.00th=[   41], 60.00th=[   58],
     | 70.00th=[   81], 80.00th=[  115], 90.00th=[  176], 95.00th=[  247],
     | 99.00th=[  388], 99.50th=[  453], 99.90th=[  611], 99.95th=[  701],
     | 99.99th=[  873]
    bw (KB  /s): min=    0, max=  153, per=3.11%, avg=55.64, stdev=24.16
    lat (msec) : 2=0.04%, 4=3.12%, 10=13.44%, 20=15.08%, 50=24.21%
    lat (msec) : 100=20.24%, 250=19.04%, 500=4.53%, 750=0.26%, 1000=0.01%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.05%, ctx=19737, majf=0, minf=0
  IO depths    : 1=146.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13480/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19531: Sun Jun 12 14:29:03 2016
  mixed: io=4773.0MB, bw=162902KB/s, iops=159, runt= 30003msec
    clat (usec): min=4337, max=19384, avg=6251.33, stdev=564.00
     lat (usec): min=4368, max=19416, avg=6282.31, stdev=563.79
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5728], 10.00th=[ 5792], 20.00th=[ 5920],
     | 30.00th=[ 6176], 40.00th=[ 6176], 50.00th=[ 6240], 60.00th=[ 6240],
     | 70.00th=[ 6368], 80.00th=[ 6624], 90.00th=[ 6624], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8640], 99.90th=[14656], 99.95th=[14784],
     | 99.99th=[19328]
    bw (KB  /s): min=   68, max=175426, per=98.43%, avg=160339.07, stdev=21807.91
    lat (msec) : 10=99.69%, 20=0.31%
  cpu          : usr=0.98%, sys=2.36%, ctx=7167, majf=0, minf=266
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4773/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19536: Sun Jun 12 14:29:03 2016
  mixed: io=4787.0MB, bw=163369KB/s, iops=159, runt= 30005msec
    clat (usec): min=4053, max=14631, avg=6263.64, stdev=392.35
     lat (usec): min=4053, max=14632, avg=6264.08, stdev=392.40
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5792], 10.00th=[ 5792], 20.00th=[ 5984],
     | 30.00th=[ 6176], 40.00th=[ 6240], 50.00th=[ 6240], 60.00th=[ 6304],
     | 70.00th=[ 6368], 80.00th=[ 6496], 90.00th=[ 6688], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8384], 99.90th=[10176], 99.95th=[10560],
     | 99.99th=[14656]
    bw (KB  /s): min=   68, max=175426, per=98.46%, avg=160848.80, stdev=21859.02
    lat (msec) : 10=99.87%, 20=0.13%
  cpu          : usr=0.14%, sys=3.07%, ctx=7190, majf=0, minf=0
  IO depths    : 1=150.2%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4787/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=51720KB, aggrb=1713KB/s, minb=1713KB/s, maxb=1713KB/s, mint=30178msec, maxt=30178msec

Run status group 1 (all jobs):
  MIXED: io=56560KB, aggrb=1860KB/s, minb=1860KB/s, maxb=1860KB/s, mint=30400msec, maxt=30400msec

Run status group 2 (all jobs):
  MIXED: io=53920KB, aggrb=1789KB/s, minb=1789KB/s, maxb=1789KB/s, mint=30127msec, maxt=30127msec

Run status group 3 (all jobs):
  MIXED: io=4773.0MB, aggrb=162902KB/s, minb=162902KB/s, maxb=162902KB/s, mint=30003msec, maxt=30003msec

Run status group 4 (all jobs):
  MIXED: io=4787.0MB, aggrb=163369KB/s, minb=163369KB/s, maxb=163369KB/s, mint=30005msec, maxt=30005msec

Disk stats (read/write):
  sda: ios=49755/89424, merge=0/0, ticks=2046433/3140790, in_queue=5185145, util=99.37%
da: ios=19721/126402, merge=0/0, ticks=2053084/5903206, in_queue=7959499, util=99.99%
