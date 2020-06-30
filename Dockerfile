FROM python:3.8-alpine

RUN apk update \
    && apk add gcc libffi-dev musl-dev \
    && apk add --virtual .build-deps libxslt-dev python3-dev \
    && apk add postgresql-dev \
    && pip install --upgrade pip \
    && pip install psycopg2 \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/*
