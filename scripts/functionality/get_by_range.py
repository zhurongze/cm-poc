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

bucket = s3.lookup('obj-mgmt-check')
key = bucket.lookup('1M')
your_bytes = key.get_contents_as_string(headers={'Range' : 'bytes=0-1048576'})

new_file = open("1M.get_by_range", "wb")
new_file.write(your_bytes)
