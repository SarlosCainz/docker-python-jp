FROM alpine:3.17

RUN apk add --update --no-cache python3~=3.10 py3-pip
RUN apk add --no-cache tzdata \
 && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
 && apk del tzdata

RUN pip install pipenv

ENTRYPOINT ["python3"]
