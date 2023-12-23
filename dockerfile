FROM ubuntu:latest
# RUN apt-get update && apt-get install -y apt-transport-https
# RUN echo 'deb http://private-repo-1.hortonworks.com/HDP/ubuntu14/2.x/updates/2.4.2.0 HDP main' >> /etc/apt/sources.list.d/HDP.list
# RUN echo 'deb http://private-repo-1.hortonworks.com/HDP-UTILS-1.1.0.20/repos/ubuntu14 HDP-UTILS main'  >> /etc/apt/sources.list.d/HDP.list
# RUN echo 'deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/azurecore/ trusty main' >> /etc/apt/sources.list.d/azure-public-trusty.list
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN sudo apt-get -y update
RUN sudo apt-get install -y python3
RUN sudo apt-get install -y fastapi
ADD helloworld.py /project/helloworld.py
WORKDIR /project
CMD [ "python" ,"helloworld.py" ]
