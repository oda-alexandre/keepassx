# KEEPASSX

<img src="https://upload.wikimedia.org/wikipedia/en/9/9a/KeePassX_Logo.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/keepassx/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/keepassx/commits/master)


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
