# official Python runtime as a parent image
FROM python:3.9-slim

#Set the working directory in the container
WORKDIR /app

#copy the project files into the container's /app directory
COPY . /app

#install system depencencies 
RUN apt-get update && apt-get install -y \
build-essential \
&& rm -rf /var/lib/apt/lists/*

#install python dependencies
RUN pip install --upgrade pip
#RUN pip install -r requirements.txt

#run the CNN classifier (main.py) when the container  starts

#CMD ["python" ,"main.py", "--mode","test","--data_path",\
#"./data/test/","--model_path","./models/cnn_resnet18_freeze_backbone_False.pth"]


