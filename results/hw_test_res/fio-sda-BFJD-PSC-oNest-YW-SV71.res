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

hdd_4kws: (groupid=0, jobs=32): err= 0: pid=29085: Sun Jun 12 14:29:02 2016
  mixed: io=49904KB, bw=1652.1KB/s, iops=413, runt= 30192msec
    clat (msec): min=51, max=196, avg=77.26, stdev=15.68
     lat (msec): min=51, max=196, avg=77.27, stdev=15.68
    clat percentiles (msec):
     |  1.00th=[   58],  5.00th=[   60], 10.00th=[   62], 20.00th=[   65],
     | 30.00th=[   69], 40.00th=[   71], 50.00th=[   74], 60.00th=[   78],
     | 70.00th=[   82], 80.00th=[   88], 90.00th=[   99], 95.00th=[  109],
     | 99.00th=[  126], 99.50th=[  137], 99.90th=[  194], 99.95th=[  196],
     | 99.99th=[  196]
    bw (KB  /s): min=    0, max=   63, per=3.06%, avg=50.52, stdev= 7.68
    lat (msec) : 100=91.01%, 250=8.99%
  cpu          : usr=0.02%, sys=0.11%, ctx=36658, majf=0, minf=17
  IO depths    : 1=146.5%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=12476/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_4kwd: (groupid=1, jobs=32): err= 0: pid=29138: Sun Jun 12 14:29:02 2016
  mixed: io=55296KB, bw=1831.2KB/s, iops=457, runt= 30197msec
    clat (msec): min=51, max=210, avg=69.61, stdev= 9.34
     lat (msec): min=51, max=210, avg=69.61, stdev= 9.34
    clat percentiles (msec):
     |  1.00th=[   57],  5.00th=[   59], 10.00th=[   60], 20.00th=[   62],
     | 30.00th=[   64], 40.00th=[   67], 50.00th=[   69], 60.00th=[   71],
     | 70.00th=[   74], 80.00th=[   77], 90.00th=[   82], 95.00th=[   87],
     | 99.00th=[  101], 99.50th=[  104], 99.90th=[  113], 99.95th=[  117],
     | 99.99th=[  118]
    bw (KB  /s): min=    0, max=   64, per=3.06%, avg=56.05, stdev= 8.11
    lat (msec) : 100=98.86%, 250=1.14%
  cpu          : usr=0.02%, sys=0.08%, ctx=20314, majf=0, minf=0
  IO depths    : 1=146.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13824/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_4krd: (groupid=2, jobs=32): err= 0: pid=29179: Sun Jun 12 14:29:02 2016
  mixed: io=54592KB, bw=1811.6KB/s, iops=452, runt= 30135msec
    clat (msec): min=1, max=1004, avg=70.45, stdev=83.68
     lat (msec): min=1, max=1004, avg=70.45, stdev=83.68
    clat percentiles (msec):
     |  1.00th=[    3],  5.00th=[    5], 10.00th=[    8], 20.00th=[   12],
     | 30.00th=[   20], 40.00th=[   29], 50.00th=[   40], 60.00th=[   56],
     | 70.00th=[   79], 80.00th=[  114], 90.00th=[  174], 95.00th=[  239],
     | 99.00th=[  396], 99.50th=[  457], 99.90th=[  627], 99.95th=[  742],
     | 99.99th=[  963]
    bw (KB  /s): min=    0, max=  170, per=3.09%, avg=56.04, stdev=23.67
    lat (msec) : 2=0.07%, 4=2.94%, 10=13.14%, 20=14.89%, 50=25.68%
    lat (msec) : 100=20.13%, 250=18.78%, 500=4.06%, 750=0.27%, 1000=0.04%
    lat (msec) : 2000=0.01%
  cpu          : usr=0.02%, sys=0.06%, ctx=19784, majf=0, minf=0
  IO depths    : 1=144.7%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=13648/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=1
hdd_1mwd: (groupid=3, jobs=1): err= 0: pid=29215: Sun Jun 12 14:29:02 2016
  mixed: io=4817.0MB, bw=164409KB/s, iops=160, runt= 30002msec
    clat (usec): min=4330, max=18351, avg=6192.40, stdev=410.26
     lat (usec): min=4363, max=18384, avg=6223.71, stdev=410.18
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5664], 10.00th=[ 5856], 20.00th=[ 5920],
     | 30.00th=[ 5984], 40.00th=[ 6112], 50.00th=[ 6304], 60.00th=[ 6304],
     | 70.00th=[ 6368], 80.00th=[ 6432], 90.00th=[ 6432], 95.00th=[ 6496],
     | 99.00th=[ 6560], 99.50th=[ 8384], 99.90th=[10176], 99.95th=[14400],
     | 99.99th=[18304]
    bw (KB  /s): min=   68, max=175426, per=98.40%, avg=161781.70, stdev=21622.46
    lat (msec) : 10=99.85%, 20=0.15%
  cpu          : usr=0.83%, sys=2.54%, ctx=7227, majf=0, minf=265
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4817/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2
hdd_1mwd: (groupid=4, jobs=1): err= 0: pid=29220: Sun Jun 12 14:29:02 2016
  mixed: io=4822.0MB, bw=164558KB/s, iops=160, runt= 30006msec
    clat (usec): min=4042, max=10228, avg=6217.59, stdev=340.81
     lat (usec): min=4042, max=10229, avg=6218.11, stdev=340.82
    clat percentiles (usec):
     |  1.00th=[ 5536],  5.00th=[ 5728], 10.00th=[ 5856], 20.00th=[ 5984],
     | 30.00th=[ 6048], 40.00th=[ 6176], 50.00th=[ 6304], 60.00th=[ 6368],
     | 70.00th=[ 6368], 80.00th=[ 6496], 90.00th=[ 6496], 95.00th=[ 6496],
     | 99.00th=[ 6624], 99.50th=[ 8384], 99.90th=[10048], 99.95th=[10176],
     | 99.99th=[10176]
    bw (KB  /s): min=   68, max=175426, per=98.41%, avg=161934.33, stdev=21632.22
    lat (msec) : 10=99.92%, 20=0.08%
  cpu          : usr=0.17%, sys=3.06%, ctx=7235, majf=0, minf=0
  IO depths    : 1=150.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=4822/w=0/d=0, short=r=0/w=0/d=0, drop=r=0/w=0/d=0
     latency   : target=0, window=0, percentile=100.00%, depth=2

Run status group 0 (all jobs):
  MIXED: io=49904KB, aggrb=1652KB/s, minb=1652KB/s, maxb=1652KB/s, mint=30192msec, maxt=30192msec

Run status group 1 (all jobs):
  MIXED: io=55296KB, aggrb=1831KB/s, minb=1831KB/s, maxb=1831KB/s, mint=30197msec, maxt=30197msec

Run status group 2 (all jobs):
  MIXED: io=54592KB, aggrb=1811KB/s, minb=1811KB/s, maxb=1811KB/s, mint=30135msec, maxt=30135msec

Run status group 3 (all jobs):
  MIXED: io=4817.0MB, aggrb=164409KB/s, minb=164409KB/s, maxb=164409KB/s, mint=30002msec, maxt=30002msec

Run status group 4 (all jobs):
  MIXED: io=4822.0MB, aggrb=164558KB/s, minb=164558KB/s, maxb=164558KB/s, mint=30006msec, maxt=30006msec

Disk stats (read/write):
  sda: ios=50103/88113, merge=0/0, ticks=2082455/3166216, in_queue=5246995, util=99.32%
sda: ios=19895/122004, merge=0/0, ticks=2085211/5914129, in_queue=8002429, util=99.94%
