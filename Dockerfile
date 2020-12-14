FROM python:3

WORKDIR /usr/src/app

RUN pip install --no-cache-dir mlflow

CMD ["mlflow", "server", "--backend-store-uri", "file://mnt/mlflow-backend", "--default-artifact-root", "file://mnt/mlflow-artifact", "--host", "0.0.0.0"]

EXPOSE 5000
