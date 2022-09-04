FROM python:3.10

WORKDIR /app

RUN apt-get update -y && apt-get upgrade && pip install --upgrade pip

RUN pip install -r requirements.txt
