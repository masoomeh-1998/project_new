FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y fastapi
ADD helloworld.py /project/helloworld.py
COPY /helloworld/ /project/
WORKDIR /project
CMD [ "python" ,"helloworld.py" ]
