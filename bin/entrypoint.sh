#!/bin/bash

export LD_LIBRARY_PATH=/opt/game/bin
cd /opt/game/ && ./bin/bsw.Halfagame --http-address=0.0.0.0 --http-port=80 --docroot=. --c=config/wt_config.xml
