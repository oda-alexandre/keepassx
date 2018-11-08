FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
keepassx

RUN apt-get --purge autoremove -y

RUN useradd -d /home/keepassx -m keepassx && \
passwd -d keepassx && \
adduser keepassx sudo

USER keepassx

CMD keepassx
