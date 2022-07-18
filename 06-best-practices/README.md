```bash
export AWS_DEFAULT_REGION=eu-west-1
export AWS_ACCESS_KEY_ID=foobar
export AWS_SECRET_ACCESS_KEY=foobar
aws s3 mb s3://nyc-duration --endpoint-url=http://localhost:4566
aws s3 ls --endpoint-url=http://localhost:4566
```

```bash
export INPUT_FILE_PATTERN="s3://nyc-duration/in/{year:04d}-{month:02d}.parquet"
export OUTPUT_FILE_PATTERN="s3://nyc-duration/out/{year:04d}-{month:02d}.parquet"
export S3_ENDPOINT="http://localhost:4566"
export BATCH_TEST_RUN=1
```

# 3504
