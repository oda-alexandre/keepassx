# KEEPASSX

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904457/3bfed3410e1e66951203c5530204198d.media.png)

## INDEX

- [KEEPASSX](#keepassx)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [FIRST UPDATE](#first-update)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/keepassx/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/keepassx/commits/master)

## FIRST UPDATE

Date: 01-01-01

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

```docker run -d --name keepassx --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/keepassx -e DISPLAY -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' --network none alexandreoda/keepassx```

> L'option `--network none` sert à déconnecter the réseau internet afin d'éviter les attaque MITM and the télémétrie.

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/keepassx/blob/master/LICENSE)
