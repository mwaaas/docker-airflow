FROM python:3.5

RUN pip install airflow[celery,postgres,hive]==1.7.1.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
ONBUILD ENV AIRFLOW_HOME=/usr/src/app

CMD ["/bin/bash", "./run.sh"]