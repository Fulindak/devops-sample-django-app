FROM python:3.8


ENV PYTHONUNBUFFERED=1\
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /devopsapp

COPY requirements.txt ./requirements.txt
COPY main ./main
COPY media ./media
COPY parrotsite ./parrotsite
COPY manage.py ./manage.py
COPY README.md ./README.md

RUN pip install uwsgi

COPY uwsgi.ini ./uwsgi.ini

RUN pip install -r requirements.txt