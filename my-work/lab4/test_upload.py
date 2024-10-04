#!/usr/bin/python3

import boto3

s3 = boto3.client('s3', region_name='us-east-1')

# make request
response = s3.list_buckets()

# now iterate through the response:
for r in response['Buckets']:
  print(r['Name'])

bucket = 'ds2022-xfd3tf'
local_file = 'sloth.jpg'



ACL = 'public-read'

bucket_name = bucket
object_name = local_file
expires_in = 604800

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)

print(response)

(https://ds2022-xfd3tf.s3.amazonaws.com/sloth.jpg?AWSAccessKeyId=AKIAXAJL2OEOGV7DR3JC&Signature=zsheFBBXY1JLwXgrdi348qqR%2B6E%3D&Expires=1728667479)
