#!/bin/sh

# setup env
mkdir -p /root/.aws
echo "[default]"                              > /root/.aws/config

echo "[default]"                              > /root/.aws/credentials
echo "aws_access_key_id = ${ACCESS_KEY}"     >> /root/.aws/credentials
echo "aws_secret_access_key = ${SECRET_KEY}" >> /root/.aws/credentials

aws --color=off --no-paginate s3 sync $SOURCE_PATH $DESTINATION_PATH
