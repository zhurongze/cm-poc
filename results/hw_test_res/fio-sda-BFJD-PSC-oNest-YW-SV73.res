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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=19518: Sun Jun 12 14:29:03 2016
  mixed: io=52996KB, bw=1762.4KB/s, iops=440, runt= 30072msec
    clat (msec): min=51, max=128, avg=72.51, stdev=12.67
     lat (msec): min=51, max=128, avg=72.51, stdev=12.67
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   62],
     | 30.00th=[   65], 40.00th=[   68], 50.00th=[   70], 60.00th=[   73],
     | 70.00th=[   77], 80.00th=[   82], 90.00th=[   90], 95.00th=[  100],
     | 99.00th=[  115], 99.50th=[  118], 99.90th=[  127], 99.95th=[  128],
     | 99.99th=[  129]
    bw (KB  /s): min=    0, max=   61, per=3.05%, avg=53.73, stdev= 7.78
    lat (msec) : 100=95.16%, 250=4.84%
  cpu          : usr=0.01%, sys=0.12%, ctx=38857, majf=0, minf=20
  IO depths    : 1=146.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13249/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=19552: Sun Jun 12 14:29:03 2016
  mixed: io=57856KB, bw=1924.8KB/s, iops=481, runt= 30059msec
    clat (msec): min=1, max=195, avg=66.47, stdev=10.24
     lat (msec): min=1, max=195, avg=66.47, stdev=10.24
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   61],
     | 30.00th=[   62], 40.00th=[   63], 50.00th=[   65], 60.00th=[   68],
     | 70.00th=[   70], 80.00th=[   72], 90.00th=[   77], 95.00th=[   81],
     | 99.00th=[   96], 99.50th=[  115], 99.90th=[  192], 99.95th=[  194],
     | 99.99th=[  196]
    bw (KB  /s): min=    0, max=   71, per=3.05%, avg=58.70, stdev= 8.71
    lat (msec) : 2=0.01%, 10=0.17%, 20=0.08%, 50=0.24%, 100=98.78%
    lat (msec) : 250=0.73%
  cpu          : usr=0.02%, sys=0.08%, ctx=21667, majf=0, minf=0
  IO depths    : 1=149.6%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=14464/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=19587: Sun Jun 12 14:29:03 2016
  mixed: io=53512KB, bw=1777.2KB/s, iops=444, runt= 30112msec
    clat (msec): min=1, max=867, avg=71.84, stdev=85.15
     lat (msec): min=1, max=867, avg=71.85, stdev=85.15
    clat percentiles (msec):
     |  1.00th=[    4],  5.00th=[    6], 10.00th=[    8], 20.00th=[   13],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   42], 60.00th=[   57],
     | 70.00th=[   79], 80.00th=[  115], 90.00th=[  180], 95.00th=[  251],
     | 99.00th=[  400], 99.50th=[  465], 99.90th=[  627], 99.95th=[  725],
     | 99.99th=[  840]
    bw (KB  /s): min=    0, max=  151, per=3.11%, avg=55.19, stdev=24.08
    lat (msec) : 2=0.04%, 4=2.09%, 10=12.65%, 20=15.94%, 50=25.45%
    lat (msec) : 100=20.46%, 250=18.38%, 500=4.67%, 750=0.28%, 1000=0.04%
  cpu          : usr=0.02%, sys=0.06%, ctx=19629, majf=0, minf=0
  IO depths    : 1=146.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13378/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=19622: Sun Jun 12 14:29:03 2016
  mixed: io=4793.0MB, bw=163579KB/s, iops=159, runt= 30004msec
    clat (usec): min=5658, max=14623, avg=6224.24, stdev=469.50
     lat (usec): min=5691, max=14656, avg=6255.41, stdev=469.42
    clat percentiles (usec):
     |  1.00th=[ 5664],  5.00th=[ 5728], 10.00th=[ 5856], 20.00th=[ 5856],
     | 30.00th=[ 6112], 40.00th=[ 6176], 50.00th=[ 6240], 60.00th=[ 6304],
     | 70.00th=[ 6304], 80.00th=[ 6304], 90.00th=[ 6496], 95.00th=[ 6624],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[14656], 99.95th=[14656],
     | 99.99th=[14656]
    bw (KB  /s): min=   68, max=169992, per=98.46%, avg=161067.87, stdev=21418.14
    lat (msec) : 10=99.75%, 20=0.25%
  cpu          : usr=0.94%, sys=2.58%, ctx=7188, majf=0, minf=266
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4793/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=19626: Sun Jun 12 14:29:03 2016
  mixed: io=4801.0MB, bw=163863KB/s, iops=160, runt= 30002msec
    clat (usec): min=4049, max=15029, avg=6244.10, stdev=353.96
     lat (usec): min=4049, max=15030, avg=6244.65, stdev=353.97
    clat percentiles (usec):
     |  1.00th=[ 5728],  5.00th=[ 5792], 10.00th=[ 5856], 20.00th=[ 5920],
     | 30.00th=[ 6176], 40.00th=[ 6240], 50.00th=[ 6304], 60.00th=[ 6304],
     | 70.00th=[ 6304], 80.00th=[ 6368], 90.00th=[ 6496], 95.00th=[ 6688],
     | 99.00th=[ 6688], 99.50th=[ 8512], 99.90th=[10176], 99.95th=[10176],
     | 99.99th=[15040]
    bw (KB  /s): min=   68, max=170328, per=98.48%, avg=161373.03, stdev=21476.98
    lat (msec) : 10=99.88%, 20=0.12%
  cpu          : usr=0.16%, sys=3.18%, ctx=7204, majf=0, minf=0
  IO depths    : 1=150.1%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4801/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=52996KB, aggrb=1762KB/s, minb=1762KB/s, maxb=1762KB/s, mint=30072msec, maxt=30072msec

Run status group 1 (all jobs):
  MIXED: io=57856KB, aggrb=1924KB/s, minb=1924KB/s, maxb=1924KB/s, mint=30059msec, maxt=30059msec

Run status group 2 (all jobs):
  MIXED: io=53512KB, aggrb=1777KB/s, minb=1777KB/s, maxb=1777KB/s, mint=30112msec, maxt=30112msec

Run status group 3 (all jobs):
  MIXED: io=4793.0MB, aggrb=163579KB/s, minb=163579KB/s, maxb=163579KB/s, mint=30004msec, maxt=30004msec

Run status group 4 (all jobs):
  MIXED: io=4801.0MB, aggrb=163863KB/s, minb=163863KB/s, maxb=163863KB/s, mint=30002msec, maxt=30002msec

Disk stats (read/write):
  sda: ios=49448/91509, merge=0/0, ticks=2043519/3130230, in_queue=5171915, util=99.34%
s=2003157/5895296, in_queue=7901732, util=100.00%
