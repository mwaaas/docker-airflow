FROM python:3.5.1-onbuild

EXPOSE 80

CMD ["/bin/bash", "./run.sh"]