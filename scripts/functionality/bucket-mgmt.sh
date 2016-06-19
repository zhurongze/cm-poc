#!/usr/bin/bash

echo "创建测试使用账号"
echo "================================================================================"
radosgw-admin user create --uid=umtest1 --display-name="Tester1" \
--email=test1@umcloud.com --access_key=LASTQG3HJVVQF310SD2U \
--secret_key=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

echo "创建全局唯一的容器"
echo "================================================================================"
s3cmd -c ~/.s3cfg_umtest1 mb s3://bucket-mgmt-check

echo "遍历容器中的对象"
echo "================================================================================"
for i in `seq  0 9`
do
    s3cmd -c ~/.s3cfg_umtest1 put 1M s3://bucket-mgmt-check/1M.${i}
done

s3cmd -c ~/.s3cfg_umtest1  la s3://bucket-mgmt-check

echo "配置容器的生命周期"
echo "================================================================================"

echo "TODO配置容器的多版本管理"
echo "================================================================================"
obj_versioning.py

echo "容器域名访问等"
echo "================================================================================"
s3cmd -c ~/.s3cfg_umtest1 setacl s3://bucket-mgmt-check --acl-public --recursive
s3cmd -c ~/.s3cfg_umtest1 info s3://bucket-mgmt-check/1M.0

wget  http://localhost:8000/bucket-mgmt-check/1M.0 1M.new
diff 1M 1M.new

echo "设置容器访问列表"
echo "================================================================================"
radosgw-admin user create --uid=umtest2 --display-name="Tester2" \
--email=test2@umcloud.com --access_key=BBBA74VJ69J8I4N0GW3O \
--secret_key=eNKTsutRmHR8HHM03Mx3xT6ctaW3Fd+PX75KGatk

s3cmd -c ~/.s3cfg_umtest1 setacl --acl-grant=full_control:umtest2 s3://bucket-mgmt-check
s3cmd -c ~/.s3cfg_umtest2 ls s3://bucket-mgmt-check

echo "删除容器"
echo "================================================================================"
s3cmd -c ~/.s3cfg_umtest1 rb s3://bucket-mgmt-check  --recursive
s3cmd -c ~/.s3cfg_umtest1 la
