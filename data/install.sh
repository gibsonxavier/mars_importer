#!/bin/bash


DEFAULT_DIRECTORY='/usr/local/etc/mars_importer/'
CURRENT_DIRECTORY=$PWD

if [ ! -d "$DIRECTORY" ]; then
  mkdir -p $DIRECTORY
fi

if [ -d "$DIRECTORY" ]; then
  mv $CURRENT_DIRECTORY/graphit.conf $DEFAULT_DIRECTORY
  mv $CURRENT_DIRECTORY/put_mars_node.py $DEFAULT_DIRECTORY
  mv $CURRENT_DIRECTORY/helper.py $DEFAULT_DIRECTORY
  chmod -R 755 $DEFAULT_DIRECTORY/put_mars_node.py
  chmod -R 755 $DEFAULT_DIRECTORY/helper.py
  chmod -R 644 $DEFAULT_DIRECTORY/graphit.conf
fi

if [  -f $DEFAULT_DIRECTORY/put_mars_node.py ]; then
    ln -s $CURRENT_DIRECTORY/put_mars_node.py /usr/local/bin/put_mars_nodes
fi