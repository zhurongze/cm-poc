#!/bin/sh


echo "================================================================================"
echo "节点服务进程状态监控"
echo "不同类型节点的关键进程信息查看"
ceph osd dump | grep osd # For OSD
ceph quorum_status # For MON
# For RGW with haproxy

echo "================================================================================"
echo "Get process info"
ceph -s # osd down
ceph quorum_status # For MON
# For RGW with haproxy

echo "================================================================================"
echo "Get alet info"
ceph health detail


echo "================================================================================"
echo "存储系统副本策略配置测试"
echo "create pools with 3 replicas"
ceph osd pool create pool-check 128 128

ceph osd pool get pool-check size

echo "write object to pool"
dd if=/dev/urandom of=10M bs=1M count=10
rados -p pool-check put 1M 1M
rados -p pool-check ls


echo "check stastic info"

ceph osd df
df -h

# For H
radosgw-admin user create --uid=umtest3 --display-name="Tester3" \
    --email=test3@umcloud.com --access_key=QQQQQQQQQQQQQQQQQQQQ \
    --secret=ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ

radosgw-admin usage show  --uid=umtest3

