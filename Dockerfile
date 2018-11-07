FROM debian:buster-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update
RUN apt-get install -y --no-install-recommends sudo keepassx

RUN apt-get --purge autoremove -y

RUN useradd -d /home/keepassx -m keepassx
RUN passwd -d keepassx
RUN adduser keepassx sudo

USER keepassx

CMD keepassx
