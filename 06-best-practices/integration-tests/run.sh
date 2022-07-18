#!/usr/bin/env bash

cd "$(dirname "$0")"

# LocalStack S3 launching
docker-compose up -d

sleep 2

# AWS CLI environment variables setting
export AWS_DEFAULT_REGION=eu-west-1
export AWS_ACCESS_KEY_ID=foobar
export AWS_SECRET_ACCESS_KEY=foobar

# S3 bucket creation
aws s3 mb s3://nyc-duration --endpoint-url=http://localhost:4566

# Batch environment variables setting
export INPUT_FILE_PATTERN="s3://nyc-duration/in/{year:04d}-{month:02d}.parquet"
export OUTPUT_FILE_PATTERN="s3://nyc-duration/out/{year:04d}-{month:02d}.parquet"
export S3_ENDPOINT="http://localhost:4566"

pipenv run python integration_test.py

ERROR_CODE=$?

if [ ${ERROR_CODE} != 0 ]; then
    docker-compose logs
    docker-compose down
    exit ${ERROR_CODE}
fi

docker-compose down
