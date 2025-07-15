import json
import os
import uuid
import boto3

s3 = boto3.client('s3')
BUCKET = os.environ['BUCKET_NAME']

def handler(event, context):
    key = f"created-by-lambda-{uuid.uuid4()}.txt"
    s3.put_object(Bucket=BUCKET, Key=key, Body="created by lambda")
    return {
        "statusCode": 200,
        "body": json.dumps({"message": "file created", "key": key})
    }
