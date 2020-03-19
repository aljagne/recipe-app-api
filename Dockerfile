FROM python:3.7-alpine
MAINTAINER ajTech App Developer Ltd.

ENV PYTHONEUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user