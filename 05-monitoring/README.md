# Lesson 5 - Monitoring

## Question 1 - Docker compose

```bash
$ curl http://localhost:27017
It looks like you are trying to access MongoDB over HTTP on the native driver port.
```

## Question 2 - Docker volume

```bash
$ docker volume ls
DRIVER    VOLUME NAME

// ... skipped ...

local     05-monitoring_mongo_data

// ... skipped ...

```

## Question 3 - Sending data to the prediction service

```bash
$ python send_data.py

// ... skipped ...

prediction: 15.74189567604315
```

## Question 4 - Generate evidently report using Prefect

2 features have drifted:

- DOLocationID
- PULocationID


## Question 5 - Name of the test

Jensen-Shannon distance.


## Question 6 - Sending data to the prediction service with new model

```bash
$ python send_data.py

// ... skipped ...

prediction: 16.64390523011452
```


## Question 7 - Generate evidently report using Prefect with new model

3 features have drifted:

- DOLocationID
- PULocationID
- trip_distance


## Question 8 - Bonus Question (Not marked)

9 metrics:
1. abs_error_std
2. abs_perc_error_std
3. error_normality
4. error_std
5. mean_abs_error
6. mean_abs_perc_error
7. mean_err
8. underperformance
9. error_bias
