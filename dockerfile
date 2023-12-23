FROM python:3.9
RUN pip install fastapi
ADD helloworld.py /project/helloworld.py
WORKDIR /project
CMD [ "python" ,"helloworld.py" ]
