FROM python:3.8-alpine

RUN apk update \
    && apk add --virtual .build-deps gcc libxslt-dev musl-dev python3-dev \
    && apk add postgresql-dev \
    && pip install --upgrade pip \
    && pip install psycopg2 \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/*
