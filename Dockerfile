FROM python:3.10

WORKDIR /app

RUN apt-get update -y && apt-get upgrade -y && pip install --upgrade pip
COPY requirements.txt .

RUN pip install -r requirements.txt
EXPOSE 8000

CMD [ "gunicorn", "mysite.wsgi" ]
