#!/usr/bin/python2.7
# -*- coding: utf-8 -*-
#
# Created: 2016-06-11 21:44
# Copyright: (C) 2014 Jiaying Ren  mikulely@gmail.com
# http://stackoverflow.com/questions/6525270/how-to-delete-a-s3-version-from-a-bucket-using-boto-and-python

import boto
import boto.s3.connection
access_key = 'LASTQG3HJVVQF310SD2U'
secret_key = 'MboBU2RfEK4imC4rc+fyZxNNA3ymhkWh0dPeonxZ'
rgw_host = 'localhost'
rgw_port = 8000

s3 = boto.connect_s3(
     aws_access_key_id = access_key,
     aws_secret_access_key = secret_key,
     host = rgw_host,
     port = rgw_port,
     is_secure=False,               # uncomment if you are not using ssl
     calling_format = boto.s3.connection.OrdinaryCallingFormat(),
     )

#Create a versioned bucket
bucket = s3.create_bucket("um_versioning")
bucket.configure_versioning(True)

#Create a new key and make a few versions
key = bucket.new_key("versioned_object")
key.set_contents_from_string("Version 1")
key.set_contents_from_string("Version 2")

#Try to delete bucket
bucket.delete()   ## FAILS with 409 Conflict

#Delete our key then try to delete our bucket again
bucket.delete_key("versioned_object")
bucket.delete()   ## STILL FAILS with 409 Conflict

#Let's see what's in there
list(bucket.list())   ## Returns empty list []

#What's in there including versions?
list(bucket.list_versions())   ## Returns list of keys and delete markers

#This time delete all versions including delete markers(delete the
#delete marker will restore the object)
for version in bucket.list_versions():
    #NOTE we're still using bucket.delete, we're just adding the version_id parameter
    bucket.delete_key(version.name, version_id = version.version_id)

#Now what's in there
list(bucket.list_versions())   ## Returns empty list []

#Ok, now delete the bucket
bucket.delete()   ## SUCCESS!!
