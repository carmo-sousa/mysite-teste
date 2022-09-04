FROM python:3.10

WORKDIR /app

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2

COPY requirements.txt .

RUN pip install -r requirements.txt
COPY . .

EXPOSE 8000

CMD [ "gunicorn", "mysite.wsgi", "-b", "0.0.0.0:8000", "--reload"]
