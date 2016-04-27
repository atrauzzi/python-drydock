FROM python:alpine
MAINTAINER "Alexander Trauzzi <atrauzzi@gmail.com>"

RUN apk add --no-cache bash
RUN pip install --upgrade pip
RUN pip install virtualenv

RUN mkdir -p /drydock/virtualenv
ENV PYTHONUSERBASE /drydock/virtualenv

RUN mkdir -p /drydock/app
WORKDIR /drydock/app

COPY resources/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT entrypoint.sh