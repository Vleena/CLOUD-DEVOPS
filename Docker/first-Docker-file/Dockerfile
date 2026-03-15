#set the base image
FROM ubuntu:latest

#set a work directory inside the image
WORKDIR /APP

#copy everything from source to the /APP directory
COPY . /APP

#Install the necessary packages
RUN apt-get update && apt-get install -y python3

#Run the command to start the application
CMD ["python3","app.py"]

