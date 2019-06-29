# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER keepassx
ENV LANG fr_FR.UTF-8

# INSTALL PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
keepassx && \

# CHANGE LOCALES
echo ${LANG} > /etc/locale.gen && locale-gen && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# CLEANING
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# START THE CONTAINER
CMD keepassx \
