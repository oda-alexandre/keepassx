# **<center>Keepassx</center>**


**INTRODUCTION**

*keepassx https://keepass.fr/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    mkdir $HOME/keepassx

    docker run -it --name keepassx --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}/keepassx:/home/keepassx -e DISPLAY -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' --network none alexandreoda/keepassx

**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/keepassx/blob/master/LICENSE)
