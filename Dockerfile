FROM python:3.8

RUN set -eu \
 && apt-get update \
  && apt-get install -y --no-install-recommends locales locales-all \
   && apt-get clean

# RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen  \
#  && locale-gen \
#  && update-locale LANG=ja_JP.UTF-8
RUN update-locale LANG=ja_JP.utf8

ENV LC_ALL ja_JP.utf8
ENV TZ Asia/Tokyo
