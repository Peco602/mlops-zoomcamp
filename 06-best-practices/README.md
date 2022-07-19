# Lesson 6 - Best Practices

## Question 1: The main block

```python
if __name__ == "__main__":
    year = int(sys.argv[1])
    month = int(sys.argv[2])
    main(year, month)
```


## Question 2: The other file in the test folder

```bash
$ ls -al tests
total 12
drwxrwxr-x 2 azureuser azureuser 4096 Jul 19 07:48 .
drwxrwxr-x 7 azureuser azureuser 4096 Jul 19 07:42 ..
-rw-rw-r-- 1 azureuser azureuser    0 Jul 17 15:05 __init__.py
-rw-rw-r-- 1 azureuser azureuser 1189 Jul 18 10:28 test_batch.py
```


## Question 3: How many rows after preprocessing

```bash
$ pytest tests -s
================================================================================ test session starts ================================================================================
platform linux -- Python 3.9.12, pytest-7.1.2, pluggy-1.0.0
rootdir: /home/azureuser/notebooks/06-best-practices
collected 1 item                                                                                                                                                                    

tests/test_batch.py   PUlocationID DOlocationID     pickup_datetime    dropOff_datetime  duration
0           -1           -1 2021-01-01 01:02:00 2021-01-01 01:10:00       8.0
1            1            1 2021-01-01 01:02:00 2021-01-01 01:10:00       8.0
diff={}
.

================================================================================= 1 passed in 0.62s =================================================================================
```

There are 2 rows after preprocessing.


## Question 4: Command for creating a bucket with localstack

```bash
$ aws s3 mb s3://nyc-duration --endpoint-url=http://localhost:4566
```


## Question 5: Size for the test dataframe

```bash
$ aws s3 ls s3://nyc-duration/in/ --endpoint-url=http://localhost:4566
2022-07-19 08:03:36       3504 2021-01.parquet
```

The size is 3504. The nearest value in the form is 3512.


## Question 6: Sum of predicted durations

```bash
$ make integration-tests

// ... skipped ...

Total duration: 69.28869683240714

// ... skipped ...

```
