FROM ubuntu:latest

WORKDIR /APP

COPY . /APP

#install the necessary packages
RUN apt-get update && apt-get install -y python3

CMD ["python3","cal.py"]

