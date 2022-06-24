FROM python:2.7.18-slim
MAINTAINER <arvindr226@gmail.com> Arvind Rawat
RUN apt update && apt install -y git
RUN mkdir /app
ADD ./compare-git-branches.py /usr/local/bin/compare-git-branches
RUN chmod +x /usr/local/bin/compare-git-branches
RUN mkdir /code

WORKDIR /code

