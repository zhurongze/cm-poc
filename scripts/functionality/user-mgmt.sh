#!/usr/bin/bash

echo "user mgmt"
echo "================================================================================"
echo "create user"

# For J 
radosgw-admin user create --uid=umtest1 --display-name="Tester1" \
--email=test1@umcloud.com --access_key=LASTQG3HJVVQF310SD2U \
--secret_key=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

# For H
radosgw-admin user create --uid=umtest1 --display-name="Tester1" \
--email=test1@umcloud.com --access_key=LASTQG3HJVVQF310SD2U \
--secret=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

echo "================================================================================"
echo "check user info"
radosgw-admin user info --uid=umtest1

echo "================================================================================"
echo "config user quota"
radosgw-admin quota set --quota-scope=user --uid=umtest1 --max-size=1048576 # 1M
radosgw-admin quota enable --quota-scope=user --uid=umtest1

s3cmd -c ~/.s3cfg_umtest1 ls
s3cmd -c ~/.s3cfg_umtest1 mb s3://bucket-quota-check
s3cmd -c ~/.s3cfg_umtest1 put 2M s3://bucket-quota-check/2M

echo "================================================================================"
echo "create/delete subuser"
radosgw-admin subuser create --uid=umtest1 --subuser=umtest1:swift --access=full
radosgw-admin user info --uid=umtest1
radosgw-admin subuser rm --uid=umtest1 --subuser=umtest1:swift

echo "================================================================================"
echo "suspend/enable user"
radosgw-admin user suspend --uid=umtest1
radosgw-admin user info --uid=umtest1

s3cmd  -c ~/.s3cfg_umtest1  ls # ERROR: S3 error: 403 (UserSuspended)

radosgw-admin user enable --uid=umtest1
radosgw-admin user info --uid=umtest1

echo "delete SK"
echo "================================================================================"

radosgw-admin user create --uid=umtest1 --display-name="Tester1" \
--email=test1@umcloud.com --access_key=QASTQG3HJVVQF310SD2U \
--secret_key=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

radosgw-admin user info --uid=umtest1
radosgw-admin key rm --uid=umtest1 --access-key=QASTQG3HJVVQF310SD2U

echo "delete user"
echo "================================================================================"
radosgw-admin user rm --uid=umtest1 --purge-keys --purge-data

echo "create AK/SK"
echo "================================================================================"
radosgw-admin key create --uid=umtest1 \
 --access_key=QQQQQQQQQQQQQQQQQQQQ \
--secret_key=MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ

