# KEEPASSX

[![dockeri.co](https://dockeri.co/image/alexandreoda/keepassx)](https://hub.docker.com/r/alexandreoda/keepassx)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/keepassx.svg)](https://microbadger.com/images/alexandreoda/keepassx)
[![size](https://images.microbadger.com/badges/image/alexandreoda/keepassx.svg)](https://microbadger.com/images/alexandreoda/keepassx")
[![build](https://img.shields.io/docker/build/alexandreoda/keepassx.svg)](https://hub.docker.com/r/alexandreoda/keepassx)
[![automated](https://img.shields.io/docker/automated/alexandreoda/keepassx.svg)](https://hub.docker.com/r/alexandreoda/keepassx)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [Keepassx](https://keepass.info/index.html)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/keepassx).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -it --name keepassx --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/keepassx -e DISPLAY -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' --network none alexandreoda/keepassx
```

> L'option `--network none` sert à déconnecter le réseau internet afin d'éviter les attaque MITM et la télémétrie.


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/keepassx/blob/master/LICENSE)
