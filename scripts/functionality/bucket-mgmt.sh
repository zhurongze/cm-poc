#!/usr/bin/bash

echo "创建测试使用账号"
echo "create accounts for test"
echo "================================================================================"

# for J
radosgw-admin user create --uid=umtest1 --display-name="Tester1" \
--email=test1@umcloud.com --access_key=LASTQG3HJVVQF310SD2U \
--secret_key=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

# For H
radosgw-admin user create --uid=umtest1 --display-name="Tester1" \
--email=test1@umcloud.com --access_key=LASTQG3HJVVQF310SD2U \
--secret=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

echo "创建全局唯一的容器"
echo "create bucket"
echo "================================================================================"
s3cmd -c ~/.s3cfg_umtest1 mb s3://bucket-mgmt-check

echo "list objects in the bucket"
echo "================================================================================"
for i in `seq  0 9`
do
    s3cmd -c ~/.s3cfg_umtest1 put 1M s3://bucket-mgmt-check/1M.${i}
done

s3cmd -c ~/.s3cfg_umtest1  la s3://bucket-mgmt-check

echo "set bucket lifecycle mgmt"
echo "================================================================================"

dd if=/dev/urandom of=30M bs=30M count=1
s3cmd mb s3://bucket-without-lc-check
s3cmd put 30M s3://bucket-without-lc-check/30M

s3cmd mb s3://bucket-lc-check

s3cmd setlifecycle oneday_delete.xml s3://bucket-lc-check

s3cmd put 30M s3://bucket-lc-check/30M

cat <<EOF
<LifecycleConfiguration>
        <Rule>
         <ID>sample-rule</ID>
         <Prefix></Prefix>
         <Status>enable</Status>
         <Expiration>
            <Days>3</Days>
         </Expiration>
        </Rule>
 </LifecycleConfiguration>
EOF

echo "test object versioning"
echo "================================================================================"
obj_versioning.py

echo "access by URL"
echo "================================================================================"
s3cmd -c ~/.s3cfg_umtest1 setacl s3://bucket-mgmt-check --acl-public --recursive
s3cmd -c ~/.s3cfg_umtest1 info s3://bucket-mgmt-check/1M.0

wget  http://localhost:8000/bucket-mgmt-check/1M.0 1M.new
diff 1M 1M.new

echo "test bucket ACL"
echo "================================================================================"

# For J
radosgw-admin user create --uid=umtest2 --display-name="Tester2" \
--email=test2@umcloud.com --access_key=BBBA74VJ69J8I4N0GW3O \
--secret_key=eNKTsutRmHR8HHM03Mx3xT6ctaW3Fd+PX75KGatk

# For H
radosgw-admin user create --uid=umtest2 --display-name="Tester2" \
--email=test2@umcloud.com --access_key=BBBA74VJ69J8I4N0GW3O \
--secret=eNKTsutRmHR8HHM03Mx3xT6ctaW3Fd+PX75KGatk


s3cmd -c ~/.s3cfg_umtest1 setacl --acl-grant=full_control:umtest2 s3://bucket-mgmt-check
s3cmd -c ~/.s3cfg_umtest2 ls s3://bucket-mgmt-check

echo "delete bucket"
echo "================================================================================"
s3cmd -c ~/.s3cfg_umtest1 rb s3://bucket-mgmt-check  --recursive
s3cmd -c ~/.s3cfg_umtest1 la
