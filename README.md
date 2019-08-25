# KEEPASSX

<img src="https://upload.wikimedia.org/wikipedia/en/9/9a/KeePassX_Logo.png" width="200" height="200"/>

## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/keepassx/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/keepassx/commits/master)

## INTRODUCTION

Docker image of :

- [Keepassx](https://keepass.info/index.html)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/keepassx/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/keepassx)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -it --name keepassx --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/keepassx -e DISPLAY -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' --network none alexandreoda/keepassx```

> L'option `--network none` sert à déconnecter the réseau internet afin d'éviter les attaque MITM and the télémétrie.

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/keepassx/blob/master/LICENSE)
