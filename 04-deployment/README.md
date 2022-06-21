# Lesson 4 - Deployment

## Question 1: Mean predicted duration for 2021.02 FHV

```bash
$ python starter.py 2021 2
Loading model...
Reading data...
Predicting trip duration...
Predicted mean duration 16.191691679979066
Exporting data...
```

## Question 2: The size of the output file

```bash
$ ls -al *2021-02*
-rw-rw-r-- 1 azureuser azureuser 19711507 Jun 21 18:28 fhv_tripdata_2021-02_predicted.parquet
```

## Question 3: Converting notebook to script

```bash
$ jupyter nbconvert --to script starter.ipynb
$ ls *.py
starter.py
```

## Question 4: Scikit-Learn dependency hash
```bash
$ grep scikit-learn Pipfile.lock -A2
        "scikit-learn": {
            "hashes": [
                "sha256:08ef968f6b72033c16c479c966bf37ccd49b06ea91b765e1cc27afefe723920b",
```

## Question 5: Mean predicted duration for 2021.03

```bash
$ python starter.py 2021 3
Loading model...
Reading data...
Predicting trip duration...
Predicted mean duration 16.298821614015107
Exporting data...
```

## Question 6: Mean predicted duration for 2021.04 (Docker)

```bash
$ docker build -t mlops-zoomcamp-deployment:latest .

// ... skipped ...

$ docker run -t mlops-zoomcamp-deployment:latest ./starter.py 2021 4
Loading model...
Reading data...
Predicting trip duration...
Predicted mean duration 9.967573179784523
Exporting data...
```
