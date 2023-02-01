FROM python:3.10-alpine

RUN apk add --update --no-cache tzdata \
 && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
 && apk del tzdata

RUN pip install pipenv
