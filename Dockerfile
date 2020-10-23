FROM python:3.8

RUN set -eu \
 && apt-get update \
 && apt-get install -y --no-install-recommends locales locales-all \
 && apt-get clean

RUN pip install pipenv

RUN update-locale LANG=ja_JP.utf8

ENV LC_ALL ja_JP.utf8
ENV TZ Asia/Tokyo
