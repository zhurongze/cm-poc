#!/usr/bin/bash

s3cmd -c ~/.s3cfg_umtest1 mb s3://obj-mgmt-check

echo "================================================================================"
echo "对象上传"
s3cmd -c ~/.s3cfg_umtest1 mb s3://obj-mgmt-check
dd if=/dev/urandom of=10M bs=1M count=10
s3cmd -c ~/.s3cfg_umtest1 put 10M s3://obj-mgmt-check

echo "================================================================================"
echo "对象下载"
s3cmd -c ~/.s3cfg_umtest1 get s3://obj-mgmt-check/10M 10M.new
diff 10M 10M.new

#TODO 设置对象生命周期
# http://www.17od.com/2012/12/19/ten-useful-openstack-swift-features/
echo "================================================================================"

echo "================================================================================"
echo "设置对象多版本"
obj_versioning.py

echo "================================================================================"
echo "查看对象属性"
s3cmd -c .s3cfg_sh info s3://obj-mgmt-check/10M

s3cmd -c ~/.s3cfg_umtest1 info

echo "================================================================================"
echo "复制对象"
s3cmd -c ~/.s3cfg_umtest1 mb s3://other-obj-mgmt-check
s3cmd -c ~/.s3cfg_umtest1 la
s3cmd -c ~/.s3cfg_umtest1 cp s3://obj-mgmt-check/10M s3://other-obj-mgmt-check/10M

echo "================================================================================"
echo "对象重命名"
s3cmd -c ~/.s3cfg_umtest1 mv s3://obj-mgmt-check/10M s3://obj-mgmt-check/10m
s3cmd -c ~/.s3cfg_umtest1 la

echo "================================================================================"
echo "支持前缀搜索对象"
for i in `seq  0 9`
do
    s3cmd -c ~/.s3cfg_umtest1 put 1M s3://obj-mgmt-check/${i}.suffix
done

for i in `seq  0 9`
do
    s3cmd -c ~/.s3cfg_umtest1 put 1M s3://obj-mgmt-check/prefix/${i}
done

s3cmd -c ~/.s3cfg_umtest1 ls s3://obj-mgmt-check/prefix/

echo "================================================================================"
echo "设置对象的公开访问URL"
s3cmd -c ~/.s3cfg_umtest1 setacl s3://obj-mgmt-check/prefix/0  --acl-public
wget http://localhost:8000/obj-mgmt-check/prefix/0 0

echo "================================================================================"
echo "对象分块上传"
echo "================================================================================"
#  --multipart-chunk-size-mb=SIZE
#                        Size of each chunk of a multipart upload. Files bigger
#                        than SIZE are automatically uploaded as multithreaded-
#                        multipart, smaller files are uploaded using the
#                        traditional method. SIZE is in Mega-Bytes, default
#                        chunk size is 15MB, minimum allowed chunk size is
#                        5MB, maximum is 5GB.
dd if=/dev/urandom of=30M bs=1M count=30
s3cmd -c ~/.s3cfg_umtest1 --multipart-chunk-size-mb=30 put 30M s3://obj-mgmt-check/ --debug
s3cmd -c ~/.s3cfg_umtest1 --multipart-chunk-size-mb=15 put 30M s3://obj-mgmt-check/ --debug
s3cmd -c ~/.s3cfg_umtest1 --multipart-chunk-size-mb=5 put 30M s3://obj-mgmt-check/ --debug

echo "================================================================================"
echo "对象分块下载"
s3_get_by_range.py

dd bs=1 skip=100 count=100 if=file.bin of=output

echo "================================================================================"
echo "删除多个对象"
s3cmd -c  ~/.s3cfg_umtest1 del  s3://obj-mgmt-check/prefix/*
