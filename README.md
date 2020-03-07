# KEEPASSX

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904457/3bfed3410e1e66951203c5530204198d.media.png)

## INDEX

- [KEEPASSX](#keepassx)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/keepassx/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/keepassx/commits/master)

## INTRODUCTION

Docker image of :

- [Keepassx](https://keepass.info/index.html)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/keepassx/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/keepassx)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -d \
--name keepassx \
--network none \
-e DISPLAY \
-e XAUTHORITY='/xauthority' \
--env=QT_X11_NO_MITSHM=1 \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
-v ${HOME}:/home/keepassx \
-v ${XAUTHORITY}:/xauthority:ro \
alexandreoda/keepassx
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  keepassx:
    container_name: keepassx
    image: alexandreoda/keepassx
    restart: no
    network_mode: none
    privileged: false
    environment:
      - DISPLAY
      - QT_X11_NO_MITSHM=1
      - XAUTHORITY='/xauthority'
    volumes:
      - "${HOME}:/home/keepassx"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
      - "${XAUTHORITY}:/xauthority:ro"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/keepassx/blob/master/LICENSE)
