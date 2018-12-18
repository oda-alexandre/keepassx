FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
keepassx

# AJOUT UTILISATEUR
RUN useradd -d /home/keepassx -m keepassx && \
passwd -d keepassx && \
adduser keepassx sudo

# SELECTION UTILISATEUR
USER keepassx

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD keepassx
