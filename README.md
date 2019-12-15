# KEEPASSX

<img src="https://upload.wikimedia.org/wikipedia/en/9/9a/KeePassX_Logo.png" width="200" height="200"/>

## INDEX

  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/keepassxc/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/keepassxc/commits/master)

## INTRODUCTION

Docker image of :

- [Keepassx](https://keepass.info/index.html)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/keepassxc/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/keepassxc)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name keepassxc -v ${HOME}:/home/keepassxc -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' -e DISPLAY --network none keepassxc```

> L'option `--network none` sert à déconnecter the réseau internet afin d'éviter les attaque MITM and the télémétrie.

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/keepassxc/blob/master/LICENSE)
