FROM ubuntu:latest
RUN apt-get install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y fastapi
ADD helloworld.py /project/helloworld.py
WORKDIR /project
CMD [ "python" ,"helloworld.py" ]
