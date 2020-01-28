FROM openjdk:8-jre-alpine

LABEL maintainer="Dmytro Tkachenko"

ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache