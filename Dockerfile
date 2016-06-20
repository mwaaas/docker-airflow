FROM python:3.5.1-onbuild

ENV AIRFLOW_HOME=/usr/src/app

EXPOSE 80

CMD ["/bin/bash", "./run.sh"]