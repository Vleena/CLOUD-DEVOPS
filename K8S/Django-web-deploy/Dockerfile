FROM ubuntu

WORKDIR /APP

COPY requirements.txt /APP
COPY devops /APP


RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv

RUN python3 -m venv venv1

RUN venv1/bin/pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["venv1/bin/python3","manage.py","runserver","0.0.0.0:8000"] 
