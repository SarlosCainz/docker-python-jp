FROM python:3.9

RUN set -eu \
 && apt-get update \
 && apt-get install -y --no-install-recommends locales locales-all \
 && apt-get clean

RUN set -eux \
 && git clone https://github.com/ImageMagick/ImageMagick.git \
 && cd ImageMagick \
 && ./configure \
 && make \
 && make install \
 && cd .. \
 && ldconfig /usr/local/lib \
 && rm -r ImageMagick

RUN update-locale LANG=ja_JP.utf8

ENV LC_ALL ja_JP.utf8
ENV TZ Asia/Tokyo
