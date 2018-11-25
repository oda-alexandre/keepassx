# KEEPASSX

![keepassx](https://raw.githubusercontent.com/oda-alexandre/keepassx/master/img/logo-keepassx.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/keepassx/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![keepassx docker build](https://img.shields.io/docker/build/alexandreoda/keepassx.svg)](https://hub.docker.com/r/alexandreoda/keepassx)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Keepassx](https://keepass.info/index.html) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/keepassx/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -it --name keepassx --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/keepassx -e DISPLAY -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' --network none alexandreoda/keepassx
```

L'option `--network none` sert à déconnecter le réseau internet afin d'éviter la télémétrie.


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/keepassx/blob/master/LICENSE)
