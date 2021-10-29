.. image:: doc/HaG-ImageManip-211029.gif
   :align: center

Description
===========

**Image manipulator** is PoC (proof-of-concept) image manipulation tool created with HaG game framework. The purpose is to create some tile based view, and get exact HaG manipulation command to achieve it. This is capability testing project.

The greatest thing about the project - it took only **139** lines of scripting code (including comments and white spaces) and **half a day** of the time. See yarn_ directory for the source code.

Run It
======

**HaG** framework benefits from code generation and converts YarnSpinner_-like scripts into c++ code, creating entire server side web application. And you can play test it using docker_.

.. code:: bash

   # go to directory where Dockerfile is, than run
   docker build -t hag_imagemanip:latest .
   docker run  -p 8085:80/tcp --detach --rm hag_imagemanip:latest

..

Now use browser with url http://localhost:8085.

In order to stop container, do:

.. code:: bash

   docker ps

   # you should see something like this lines, you need specific <CONTAINER ID>
   #CONTAINER ID   IMAGE                   COMMAND                  CREATED              STATUS              PORTS                                   NAMES
   #c69053813cc2   hag_imagemanip:latest   "/opt/game/bin/entry…"   About a minute ago   Up About a minute   0.0.0.0:8085->80/tcp, :::8085->80/tcp   jolly_mestorf

   docker stop c69053813cc2
..

Own Assets
==========

You can update images with your own. In order to do this - overwrite images located in img_ directory, but preserve file names (only works with png for now). Then run commands from `Run It`_ section.

Be sure to clear browser cache.

Credits
=======

`Dungeon tiles`__  (RGS_Dev)

Quote from author:

.. code:: text

   You can use and modify this asset to fit your needs, for commercial and non commercial games, but please, don't resell or redistribute this asset, even modified.

   Credit is not required.

..

I was happy to hear the author of dungeon tiles allowed me to use his great work in non-profit projects. So here we are, his tiles are included, but they do have other license, so mind that and ask author for permission.

.. _YarnSpinner: https://yarnspinner.dev/
.. _yarn: yarn/
.. _img: img/
.. _docker: https://docs.docker.com/engine/install/
.. __: https://rgsdev.itch.io/free-isometric-dungeon-game-tileset-2d-asset-by-rgsdev
