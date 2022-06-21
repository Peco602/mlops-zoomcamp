FROM agrigorev/zoomcamp-model:mlops-3.9.7-slim

RUN pip install -U pip
RUN pip install pipenv

COPY [ "Pipfile", "Pipfile.lock", "./" ]

RUN pipenv install --system --deploy

COPY [ "starter.py", "./" ]

# docker build -t mlops-zoomcamp-deployment:latest .
# docker run -t mlops-zoomcamp-deployment:latest ./starter.py 2021 4