echo "================================================================================"
echo "节点服务进程状态监控"
echo "不同类型节点的关键进程信息查看"
ceph osd dump | grep osd # For OSD
ceph quorum_status # For MON
# For RGW with haproxy

echo "================================================================================"
echo "进程丢失信息反馈"
ceph -s # osd down
ceph quorum_status # For MON
# For RGW with haproxy

echo "================================================================================"
echo "告警信息监控"


echo "================================================================================"
echo "存储系统副本策略配置测试"
# 1. 构建分布式存储集群。
# 2. 创建采用3副本的存储池。
# 3. 检查存储池是否能成功创建。
# 4. 上传测试文件，查看存储池中的副本个数。
# 5. 创建采用8/3EC策略的存储池，检查存储池是否能成功创建。
# 6. 当多于3个存储节点丢失时，该测试文件被标记为丢失；当小于3个存储节点丢失时，它们可被自动修复。并重新存储。

ceph osd pool create pool-check 128 128

ceph osd pool get pool-check size

dd if=/dev/urandom of=10M bs=1M count=10
rados -p pool-check put 1M 1M
rados -p pool-check ls


echo "================================================================================"
echo "存储系统数据分布策略"

# 1.基于分布在3个不同机架的分布式存储集群。
# 2.通过存储数据分布的策略配置，使得采用3副本的存储池中数据分布分布到3个机架上的磁盘。

echo "系统统计测试"
# 1. 构建分布式存储集群。
# 2. 进行上传、下载等对象相关操作。
# 3. 验证容器、用户、系统级别容量统计的准确性。
# 4. 验证容器、用户、系统级别流量统计的准确性。
# 5. 验证容器、用户、系统级别请求次数的准确性

ceph osd df
df -h

# For H
radosgw-admin user create --uid=umtest3 --display-name="Tester3" \
--email=test3@umcloud.com --access_key=QQQQQQQQQQQQQQQQQQQQ \
--secret=ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ

radosgw-admin usage show  --uid=umtest3

echo "================================================================================"
echo "在线扩容测试"
# 1. 构建分布式存储集群。
# 2. 通过客户端上传3G文件。
# 3. 通过页面或命令在线增加存储节点，限制数据迁移速度。
# 4. 检查客户端的请求并未感知到集群扩容。
# 5. 检查数据是否重新平衡，计算数据迁移速度与所限制速度是否一致。

echo "================================================================================"
echo "在线升级测试"
# 1. 构建分布式存储集群。
# 2. 通过客户端上传3G文件。
# 3. 对存储集群进行软件包升级；
# 4. 对存储进程，管理进程，以及接入进程在不重启进程的情况下更新配置。
# 5. 检查客户端的请求并未感知到集群升级或配置更新

echo "================================================================================"
echo "数据副本损坏测试"
# 1. 构建不少于5个节点的分布式存储集群。
# 2. 通过客户端上传3G文件。
# 3. 在任一数据盘，手动删除或篡改数据文件。
# 4. 验证数据完整性。

echo "================================================================================"
echo "单数据盘故障"
# 1. 构建不少于5个节点的分布式存储集群，并搭建管理监控环境。
# 2. 在管理监控环境中进行相关操作。
# 3. 带电拔出集群内任一节点的任一数据盘模拟数据盘故障。
# 4. 测试文件是否可读。
# 5. 通过客户端上传3G文件，观察集群是否可以写，写性能是否有变化。
# 6. 将一块新的磁盘插入，观察数据重建进度，记录并计算每T数据重建时间。
# 7. 通过客户端上传3G文件，观察系统性能。
# 8. 验证数据完整性。

echo "================================================================================"
echo "单节点故障"
# 1. 构建不少于5个节点的分布式存储集群，并搭建管理监控环境。
# 2. 在管理监控环境中进行相关操作。
# 3. 通过客户端上传3G文件。
# 4. 下电集群内任一节点模拟节点故障。
# 5. 观察客户端上传进度是否平稳。
# 6. 在管理监控环境中观察数据重建进度，记录并计算每T数据重建时间。（存储节点）
# 7. 验证数据完整性。
# 8. 上电已下电节点，模拟节点故障排除。
# 9. 如果数据存储采用1主2副方式，则任意两节点故障也应不影响数据完整性。
