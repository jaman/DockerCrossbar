From python:2.7.10
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code
WORKDIR /code
ADD requirements.txt /code/
RUN rm .crossbar/node.pid; pip install -r requirements.txt
ADD . /code/
