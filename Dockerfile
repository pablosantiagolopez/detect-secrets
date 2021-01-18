FROM ubuntu:18.04

LABEL version="v0.14.4"
LABEL description="detect-secrets is an aptly named module for (surprise, surprise) detecting secrets within a code base."

RUN apt update
RUN apt-get install -y python3 python3-pip

ADD . /detect-secrets
WORKDIR /detect-secrets

RUN python3 setup.py build
RUN python3 setup.py install